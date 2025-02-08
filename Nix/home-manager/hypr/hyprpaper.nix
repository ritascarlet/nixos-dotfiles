#################
### HYPRPAPER ###
#################
{ config, lib, pkgs, ... }: {
	services.hyprpaper = {
		enable = true;
		settings = {

	preload = [
		"~/Nix/home-manager/wallpapers/waguri.jpg"
	];

	wallpaper = [
    "DP-1, ~/Nix/home-manager/wallpapers/waguri.jpg"
    "eDP-1, ~/Nix/home-manager/wallpapers/waguri.jpg"
      			];
    		};
 	};
}
