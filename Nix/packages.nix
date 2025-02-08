####################
### NIX PACKAGES ###
####################
{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [

	#Applications
  google-chrome
	piper
	obs-studio
	telegram-desktop
	wev
	spotify
	zed-editor
	legcord
	lm_sensors
	eww
	btop
	nixfmt-rfc-style
	p7zip
	nettools


	#AmneziaWg
	  amnezia-vpn
  	amneziawg-go
  	amneziawg-tools
  	linuxKernel.kernels.linux_zen
  	linuxKernel.packages.linux_zen.amneziawg
	wireguard-go
	wireguard-tools

	#Software
	pavucontrol
	pulseaudio
	fastfetch
	git
	wget
	unzip
	wl-clipboard
	wl-clipboard-rs
	pam
	fprintd

	#Зависимости (героиновая, мефедроновая)
	android-tools
	egl-wayland
	

	#Discord canary with Vencord
	(discord.override {
	withVencord = true;
	})

	#LibreOffice
	libreoffice-qt6
	hunspellDicts.ru_RU
	hunspellDicts.ru-ru

	#Vulkan
	vulkan-tools
	vulkan-validation-layers
	mesa

	#Home-manager
	home-manager

	#Nur (ай нурчик классно плитку положил)


	];

  fonts.packages = with pkgs; [
	jetbrains-mono
	font-awesome

	];

 
 
}
