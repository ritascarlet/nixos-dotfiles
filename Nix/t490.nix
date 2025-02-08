#####################
### THINKPAD T490 ###
#####################
{config, lib, pkgs, modulesPath, ... }: {

  environment.systemPackages = with pkgs; [

  #Bluetooth
  bluez
  blueman

  #Monitor
  brightnessctl

  #Wifi:)
  networkmanagerapplet
  ];

  services.blueman.enable = true;
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
}
