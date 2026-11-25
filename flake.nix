{
  description = "pixi-positron env";
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    { flake-utils, nixpkgs, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; config.allowUnfree=true; };
        fhs = pkgs.buildFHSEnv {
          name = "pixi-positron";

          targetPkgs = _: [ 
            pkgs.pixi 
            pkgs.which # used by R and not available in devshell!
            pkgs.positron-bin # also works with system editor
          ];
        };
      in
      {
        devShell = fhs.env;
      }
    );
}
