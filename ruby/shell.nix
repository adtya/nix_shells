{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
	buildInputs = [
		pkgs.ruby_3_1
		pkgs.sqlite
	];
	shellHook = ''
		export GEM_HOME=$PWD/.nix/gems
		export GEM_PATH=$GEM_HOME:$GEM_PATH
		export PATH=$GEM_HOME/bin:$PATH
	'';
}
