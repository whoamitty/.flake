{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the nixos-25.05 branch here
	
	zen-browser = {
		url = "github:0xc000022070/zen-browser-flake";
		# inputs.nixpkgs.follows = "nixpkgs";
		};
	nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
	#inputs.nixpkgs.follows = "nixpkgs";

  };

  outputs = inputs@{ self, nixpkgs,  ... }: {
    # Please replace my-nixos with your hostname
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };

	modules = [
        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
        ./configuration.nix

      ];
    };
  };
}
