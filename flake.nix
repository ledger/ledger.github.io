{
  description = "Website for ledger-cli.org";

  nixConfig.bash-prompt = "ledger-cli.org$ ";

  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    # NOTA BENE: When a new release of ledger or ledger-mode is available, update
    # the tag in the url below and run `nix flake update`, so that GitHub Actions
    # will build the documentation for ledger-cli.org from the latest release.
    # TODO: Uncomment once a ledger release contains changes from afh/ledger@web-docs
    #ledger.url = "github:ledger/ledger/v3.3.1";
    # TODO: Remove once a ledger release contains changes from afh/ledger@web-docs
    ledger.url = "github:afh/ledger/7b7bb08f5c5903566f866af23acde6a3c451b7d3?dir=doc";
    ledger-mode.url = "github:ledger/ledger-mode/v4.0.0?dir=doc";
    ledger-mode.flake = false;
  };

  outputs = { self, nixpkgs, flake-utils, ledger, ledger-mode }:
    flake-utils.lib.eachDefaultSystem( system:
    let
      pkgs = import nixpkgs { inherit system; };
      gems = with pkgs; bundlerEnv {
        name = "ledger.github.io-gems";
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
          name = "ledger.github.io";
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

       doc-ledger = pkgs.stdenvNoCC.mkDerivation rec {
         name = "ledger";

         src = ledger;

         nativeBuildInputs = with pkgs; [
           cmake groff texinfo tex
         ];

         enableParallelBuilding = false;

         preConfigure = "cd doc";

         cmakeFlags = [ "-DBUILD_WEB_DOCS:BOOL=ON" "-Wno-dev" ];

         buildFlags = "doc";
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
