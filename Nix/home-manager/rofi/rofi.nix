{ pkgs, ... }:{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    theme = ./themes/main.rasi;
    extraConfig = {
    modi = "drun";
    show-icons = true;
    display-drun = " Apps |";
    window-format = "{w} · {c} · {t}";
   	drun-display-format = "{name} [<span weight='light' size='small'><i>({generic})</i></span>]";
    };
};
}
