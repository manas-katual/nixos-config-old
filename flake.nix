{
  description = "My system configuration";

  inputs = {

    # nix packages
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # home manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # neovim distro
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # stylix
    #stylix.url = "github:danth/stylix";

    # nix colors
    nix-colors.url = "github:misterio77/nix-colors";

		# nur
		nur.url = github:nix-community/NUR;

  };

  outputs = { self, nixpkgs, home-manager, nur, ... }@inputs:

    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
    in {
    # nixos - system hostname
    nixosConfigurations.hyprdell = lib.nixosSystem {
      specialArgs = {
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        inherit inputs system;
      };
      modules = [
        ./hosts/dell/configuration.nix
				inputs.nur.nixosModules.nur
				home-manager.nixosModules.home-manager {
	  			home-manager.useGlobalPkgs = true;
	  			home-manager.useUserPackages = true;
	  			home-manager.users.manas = import ./hosts/dell/home.nix;
	  		  home-manager.extraSpecialArgs = {inherit inputs;};
				}
      ];
    };
  };
}
