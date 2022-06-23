{ pkgs ? import <nixpkgs> { overlays = [ (import (builtins.fetchTarball "https://github.com/oxalica/rust-overlay/archive/master.tar.gz")) ]; } }:

with pkgs;
mkShell {
  buildInputs = [
    ( rust-bin.stable.latest.default.override { extensions = [ "rust-src" ]; } )
    rust-analyzer
  ];
  shellHook = ''
    export CARGO_HOME=$PWD/.nix/cargo
    export PATH=$CARGO_HOME/bin:$PATH
  '';

  RUST_BACKTRACE = 1;
}
