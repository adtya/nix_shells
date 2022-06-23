{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
	buildInputs = [
		pkgs.ruby_3_1
	];
	shellHook = ''
		export GEM_HOME=$PWD/.nix/gems
		export GEM_PATH=$GEM_HOME:$GEM_PATH
		export PATH=$PWD/bin:$GEM_HOME/bin:$PATH
	'';
}
