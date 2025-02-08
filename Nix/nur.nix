{ config, pkgs, ... }: {
  # Импорт модуля NUR
  imports = [ <nur> ];

  # Включение NUR
  nixpkgs.overlays = [
    (import <nur> { inherit pkgs; })
  ];

  # Пример установки пакета из NUR
  environment.systemPackages = with pkgs; [
    nur.repos.mic92.hello-nur

  ];
}
