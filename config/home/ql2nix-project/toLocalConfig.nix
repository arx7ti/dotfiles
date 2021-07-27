ql2nix = {
  mkNixlispBundle = pkgs: import /home/paul/gits/ql2nix-project/mkNixlispBundle.nix pkgs;
  genLispInputs = import /home/paul/gits/ql2nix-project/genLispInputs.nix;
};
