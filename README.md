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
    - use `pixi run setup-r-packages` to install R specific dependencies unavailable on conda
3. Positron:
    - in settings enable R pixi environment detection
    - in settings disable `use bundled ipykernel"
4. Enable direnv (if applicable)
