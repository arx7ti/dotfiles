{ pkgs, dependencies ? [], quicklisp-packages ? [], dists ? []}:
distfile:
  
with pkgs;

let
  ql2nix-src = lib.cleanSource /home/arx7ti/.config/nixpkgs/home/ql2nix-project;
  build = writeScript "build.lisp" ''
    ;; Setup quicklisp
    (load "quicklisp.lisp")
    (quicklisp-quickstart:install)

    ;; Load ql2nix from source
    (load "${ql2nix-src}/main.lisp")

    (dolist (dist '(${
      lib.concatMapStringsSep " " (x: ''"'' + x + ''"'') dists
    }))
      (ql-dist:install-dist dist :prompt nil))

    ;; Generate dependency definitions
    (ql2nix:main (list "--nixlisp-lib" ${
      lib.concatMapStringsSep " " (x: ''"'' + x + ''"'') quicklisp-packages
    }))
    (quit)
  '';
  generate-dist = writeScriptBin "generate-dist" ''
    set -e
    # Remember output directory
    out=$(pwd)/

    [ ! -d "$out" ] && mkdir -p "$out"

    # Create temporary home directory to work in
    tmp=$(mktemp -d --suffix=.boot.ql2nix)
    trap "rm -rf $tmp" EXIT
    cd $tmp
    HOME=$(pwd)

    # Install Quicklisp and run ql2nix
    curl -O https://beta.quicklisp.org/quicklisp.lisp
    bash -x $(which common-lisp.sh) --load ${build}

    # Copy generated files into output directory
    echo "Copying generated files"
    cp --no-preserve=mode --remove-destination -v -f qlDist.nix $out/
  '';
  mkNixlispBundle = import ./mkNixlispBundle.nix pkgs;
  bundle = mkNixlispBundle dependencies distfile;
  # Derivation defining an environment for use with nix-shell.
in with pkgs; [ bundle ] ++ dependencies ++ [ curl lispPackages.clwrapper generate-dist ]
