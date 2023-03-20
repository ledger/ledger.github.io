{
  description = "Website for ledger-cli.org";

  nixConfig.bash-prompt = "ledger-cli.org$ ";

  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem( system:
    let
      pkgs = import nixpkgs { inherit system; };
      gems = with pkgs; bundlerEnv {
        name = "ledger.github.io";
        inherit ruby;
        gemdir = ./.;
      };
    in
    {
      packages = rec {
        default = pkgs.stdenvNoCC.mkDerivation rec {
          name = "ledger.github.io";
          src = self;

          nativeBuildInputs = with pkgs; [ gems ruby ];

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
      };

      devShell = pkgs.mkShell {
        buildInputs = self.packages.${system}.default.nativeBuildInputs;
      };
    });
}
