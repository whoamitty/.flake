  let
  unstable = import <nixos-unstable> {};
  in {
	environment.systemPackages = [
		unstable.pkgs.xan
		unstable.pkgs.firefoxpwa
		unstable.pkgs.tldr
	];
 }
