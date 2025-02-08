{

  	description = "Мать ебал сука я ненавижу эту залупу сука";

  	inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		ixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		hyprland = {
        type = "git";
        url = "https://github.com/hyprwm/Hyprland";
        submodules = true;
        inputs.nixpkgs.follows = "nixpkgs";
		};

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
  		};

    hyprland-plugins = {
		url = "github:hyprwm/hyprland-plugins";
			inputs.hyprland.follows = "hyprland";
       		};

     nur = {
       url = "github:nix-community/NUR";
         inputs.nixpkgs.follows = "nixpkgs";
           };

     Hyprspace = {
       url = "github:KZDKM/Hyprspace";          # Hyprspace uses latest Hyprland. We declare this to keep them in sync.
       inputs.hyprland.follows = "hyprland";
            };

      flake-utils = {
        url = "github:numtide/flake-utils";
      };

	};

	outputs = { self, nixpkgs, home-manager, hyprland, nur, Hyprspace, flake-utils, ... }: {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
		system = "x86_64-linux";
		modules = [
			./configuration.nix

			];
		};

	homeConfigurations.hito = home-manager.lib.homeManagerConfiguration {
		pkgs = nixpkgs.legacyPackages."x86_64-linux";
		modules = [

			./home-manager/home.nix

			];
		};
	};

}
