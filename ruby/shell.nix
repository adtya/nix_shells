{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
	buildInputs = [
		pkgs.ruby_3_1
		pkgs.sqlite
		pkgs.postgresql
		pkgs.libpcap
		pkgs.libxml2
		pkgs.libxslt
		pkgs.pkg-config
	];
	shellHook = ''
		export GEM_HOME=$PWD/.nix/gems
		export GEM_PATH=$GEM_HOME:$GEM_PATH
		export PATH=$GEM_HOME/bin:$PATH
	'';
}
