{ pkgs ? import <nixpkgs> { } }:

with pkgs;

let
  dependencies = [ gnuplot gcc pkg-config sbcl libffi libffi.dev gsl hdf5 hdf5.dev ];
  quicklisp-packages = [ "cl-ana" ];
  dists = [ "http://dist.ultralisp.org/" ];
  generator = ql2nix.genLispInputs { inherit pkgs dependencies quicklisp-packages dists; };
in mkShell {
  buildInputs = generator ./qlDist.nix;
  PKG_CONFIG_PATH_CUSTOM = lib.makeSearchPath "lib/pkgconfig" [ libffi.dev ];
  CPATH = lib.makeSearchPath "include" [ gsl libffi.dev hdf5.dev ];
  LD_LIBRARY_PATH = lib.makeLibraryPath [ hdf5 gsl libffi ];
}
