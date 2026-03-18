{
  description = "Bioinformatics-Datascience env";
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    { flake-utils, nixpkgs, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { 
          inherit system; 
          config.allowUnfree = true;
        };
        fhs = pkgs.buildFHSEnv {
          name = "pixi-positron-env";

          targetPkgs = _: [ 
            pkgs.pixi 
            pkgs.positron-bin
          ];
        };
      in
      {
        devShell = fhs.env;
      }
    );
}
