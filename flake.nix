{
  description = "Config de Swan sur vmware";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
    	      url = "github:nix-community/home-manager/release-25.05";
	      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
  };

  outputs = { self, nixpkgs, home-manager, nvf, ... }@inputs: {
    nixosConfigurations = {
	    swan-vm = nixpkgs.lib.nixosSystem {
	      system = "x86_64-linux";
	      modules = [
		      nvf.nixosModules.default
			      ./machines/vmware/system.nix
		home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.swan = import ./machines/vmware/home.nix;

          }
	      ];
	    };
    };
  };
}
