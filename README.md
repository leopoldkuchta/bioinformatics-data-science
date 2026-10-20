# About
What I consider to be the best currently available software stack for bioinformatics and data science.
# Requirements
- nix package manager
- git
# Environment setup
1. Clone the repo and run nix shell
    - This will install positron and pixi
2. Pixi:
    - use `pixi install` to install all the dependencies
    - if on windows use `pixi run setup-r-packages` to install R specific dependencies unavailable on conda
    - make sure to run `pixi shell`, otherwise positron will not be able to see the shell
3. Positron:
    - start using `positron .` in working pixi directory
    - in settings enable R pixi environment detection
    - in settings disable `use bundled ipykernel"
    - works with system installation too! (flake based positron install not necessary)
4. Enable direnv
