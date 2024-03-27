with (import <nixpkgs> {});
mkShell {
    venvDir = "./.venv";
    buildInputs = [
        python3Packages.venvShellHook
    ];
    # postVenvCreation = ''
    #     pip install -U pip
    #     git clone --depth 1 https://github.com/maurosoria/dirsearch
    #     cd dirsearch
    #     pip install -r requirements.txt
    # '';
}
