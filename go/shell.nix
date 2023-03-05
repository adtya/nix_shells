{ pkgs ? import (fetchTarball https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.xz) {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.go_1_20
  ];
  shellHook = ''
    export GOPATH=$PWD/.nix/go
    export PATH=$GOPATH/bin:$PATH
  '';
}
