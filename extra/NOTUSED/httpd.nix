# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }: {

	services.httpd = {
		enable=true;
		adminAddr = "localhost";
		enablePHP = true; # oof... not a great idea in my opinion
	
	virtualHosts = [ {
	  	hostName="localhost";
	  	documentRoot = "/home/enfantdedieu/git-source/e5/epreuveE5_formulair.git";
	  	# want ssl + a let's encrypt certificate? add  `forceSSL = true;`  right here
	  	# serverAliases = [
	  	#   "localhost"
	  	# ];
	  } ];
	};
}
