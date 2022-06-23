{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.go_1_18
  ];
  shellHook = ''
    export GOPATH=$PWD/.nix/go
    export PATH=$GOPATH/bin:$PATH
  '';
}
