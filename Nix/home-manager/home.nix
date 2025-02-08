####################
### HOME-MANAGER ###
####################
{ config, lib, pkgs, home-manager, user, ... }: {

		home = {
			username = "hito";
			homeDirectory = "/home/hito";
			stateVersion = "25.05";
		};

	imports = [
	./hypr/hypr.nix
	./waybar/waybar.nix
	./kitty/kitty.nix
	./zsh/zsh.nix
	./theme/theme.nix
	./rofi/rofi.nix
	];

}
