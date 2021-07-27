{ stdenv, pkgs }:
# { pkgs ? import <nixpkgs> {} }:

stdenv.mkDerivation rec {
  name = "roswell";
  version = "v21.01.14.108";
  src = pkgs.fetchurl {
    url = "https://github.com/roswell/roswell/archive/${version}.zip";
    sha256 = "0sn4nmv8x23jyqrhyjzrdmvr5gawxmx65zddnjr5g2n5vd4d99p3";
  };
  nativeBuildInputs = with pkgs; [
    unzip
    autoconf
    automake
    curl
  ];
  configurePhase = ''
    ./bootstrap
    ./configure --prefix=$out
  '';
  buildPhase = '' make '';
  installPhase = '' make install '';
}
