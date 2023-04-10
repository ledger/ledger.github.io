{
  description = "Website for ledger-cli.org";

  nixConfig.bash-prompt = "ledger-cli.org$ ";

  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable"; # provides doxygen 1.9.6
    flake-utils.url = "github:numtide/flake-utils";
    # NOTA BENE: When a new release of ledger or ledger-mode is available, update
    # the tag in the url below and run `nix flake update`, so that GitHub Actions
    # will build the documentation from the latest ledger and ledger-mode release.
    # TODO: Replace `master` with the tag of the ledger release following 3.3.2, once available.
    ledger.url = "github:ledger/ledger/master";
    ledger-mode.url = "github:ledger/ledger-mode/v4.0.0";
    ledger-mode.flake = false;
    doxygen-awesome.url = "github:jothepro/doxygen-awesome-css/v2.2.0";
    doxygen-awesome.flake = false;
  };

  outputs = { self, nixpkgs, flake-utils, ledger, ledger-mode, doxygen-awesome }:
    flake-utils.lib.eachDefaultSystem( system:
    let
      pkgs = import nixpkgs { inherit system; };
      gems = with pkgs; bundlerEnv {
        name = "ledger-website-gems";
        inherit ruby;
        gemdir = ./.;
      };
      tex = with pkgs; texlive.combine {
        inherit (texlive) collection-plaingeneric collection-fontsrecommended;
      };
    in
    {
      packages = rec {
        default = website;
        website = pkgs.stdenvNoCC.mkDerivation rec {
          name = "ledger-website";
          src = self;

          dontConfigure = true;

          nativeBuildInputs = with pkgs; [ gems ruby nodejs ];

          buildPhase = ''
            runHook preBuild
            bundle exec middleman build
            runHook postBuild
          '';

          installPhase = ''
            runHook preInstall
            mv build $out
            runHook postInstall
          '';
        };

       doc-ledger-api = pkgs.stdenvNoCC.mkDerivation rec {
         name = "ledger-api";

         src = ledger;

         nativeBuildInputs = with pkgs; [
           cmake doxygen graphviz # doxygen uses dot from graphviz to create diagrams
         ];

         enableParallelBuilding = false;

         preConfigure = "cd doc";

         cmakeFlags = [
          "-Wno-dev"
          "-DUSE_DOXYGEN:BOOL=ON"
          "-DDOXYGEN_EXTRA_CSS:STRING=${doxygen-awesome}/doxygen-awesome.css"
         ];

         # Ensure the "generated on date at time" footer shows the actual date and time
         # when the API documentation was generated.
         preBuild = "export SOURCE_DATE_EPOCH=$(date +'%s')";

         buildFlags = "doc.doxygen";
       };

       doc-ledger = pkgs.stdenvNoCC.mkDerivation rec {
         name = "ledger";

         src = ledger;

         nativeBuildInputs = with pkgs; [
           cmake groff ghostscript texinfo tex
         ];

         enableParallelBuilding = false;

         preConfigure = "cd doc";

         cmakeFlags = [ "-Wno-dev" "-DBUILD_WEB_DOCS:BOOL=ON" ];

         buildFlags = "doc";

         postBuild = ''
           # Create print version of ledger manpage
           pdfroff -man -dpaper=letter -P-pletter $src/doc/ledger.1 > ledger.1.pdf
           # Patch web version of ledger manual to support dark mode
           sed -e 's@</style>@&<link rel="stylesheet" type="text/css" href="/stylesheets/doc.css">@' ledger3.html -i
           '';

         postInstall = ''
           # Install print version of ledger manpage
           cp ledger.1.pdf $out/share/doc/ledger
           '';
       };

       doc-ledger-mode = pkgs.stdenvNoCC.mkDerivation rec {
         name = "ledger-mode";

         src = ledger-mode;
         nativeBuildInputs = with pkgs; [
           texinfo tex
         ];

         enableParallelBuilding = false;

         dontConfigure = true;

         preBuild = "cd doc";
         buildPhase = ''
           runHook preBuild
           texi2pdf --batch ledger-mode.texi
           makeinfo --force --html --no-split ledger-mode.texi
           # Patch web version of ledger mode manual to support dark mode
           sed -e 's@</style>@&<link rel="stylesheet" type="text/css" href="/stylesheets/doc.css">@' ledger-mode.html -i
           runHook postBuild
         '';

         installPhase = ''
           runHook preInstall
           mkdir -p $out
           cp ledger-mode.html ledger-mode.pdf $out/
           runHook postInstall
         '';
       };
      };
    });
}
