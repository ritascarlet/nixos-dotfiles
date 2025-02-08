########################
### HYPRLAND DETAILS ###
########################
{ config, pkgs, ... }:{

    home.packages = with pkgs; [
      hyprlock
      xdg-desktop-portal-hyprland
      kitty
      rofi-wayland
      papirus-icon-theme
      flat-remix-gtk
      playerctl
      grim
      slurp
      nwg-look
      nemo

      #Plugins
    #  hyprlandPlugins.hyprspace
    ];

    imports = [
      ./hyprland.nix
      ./hyprpaper.nix
      ./hyprlock.nix
    ];
}
