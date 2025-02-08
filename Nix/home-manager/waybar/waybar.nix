{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        margin = "0 0 2 0";
        height = 35;

    modules-left = ["custom/rofi" "hyprland/workspaces" "hyprland/language" "keyboard-state" "hyprland/submap" "custom/playerctl"];
    modules-center = ["clock" "custom/weather"];
    modules-right = ["custom/temp" "pulseaudio" "custom/mem" "cpu" "backlight" "battery" "tray"];

    "custom/rofi" = {
      format = "{icon}";
      format-icons = "";
      on-click = "exec rofi -show drun";
    };

    "custom/playerctl" = {
      exec = "$HOME/Nix/home-manager/waybar/modules/playerctl.sh";
      format = "{}";
      interval = 1;
    };

    "hyprland/workspaces" = {
      disable-scroll = true;
      on-scroll-up = "hyprctl dispatch workspace e+1";
      on-scroll-down = "hyprctl dispatch workspace e-1";
      format = "{icon}";
      format-icons = {
              "1" = "一";
              "2" = "二";
              "3" = "三";
              "4" = "四";
              "5" = "五";
              "6" = "六";
              "7" = "七";
              "8" = "八";
              "9" = "九";
              "10" = "十";
          };
    };

    "hyprland/language" = {
        format-en = "US";
        format-ru = "RU";
	      min-length = 5;
	      tooltip = false;
    };

    "keyboard-state" = {
        #numlock = true;
        capslock = true;
        format = "{icon} ";
        format-icons = {
            locked = " ";
            unlocked = "";
        };
    };

    "clock" = {
        timezone = "Europe/Moscow";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format = "{:%a  %d %b  %I:%M %p}";
    };

    "custom/weather" = {
        format = "{}";
        tooltip = true;
        interval = 1800;
        exec = "$HOME/.config/waybar/scripts/wttr.py";
        return-type = "json";
    };

    "pulseaudio" = {
        # scroll-step = 1; # %, can be a float
        reverse-scrolling = 1;
        format = "{volume}% {icon} {format_source}";
        format-bluetooth = "{volume}% {icon} {format_source}";
        format-bluetooth-muted = " {icon} {format_source}";
        format-muted = " {format_source}";
        format-source = "{volume}% ";
        format-source-muted = "";
        format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = ["" "" ""];
        };
        on-click = "pavucontrol";
        min-length = 13;
    };

    "custom/mem" = {
        format = "{} ";
        interval = 3;
        exec = "free -h | awk '/Mem:/{printf $3}'";
        tooltip = false;
    };

    "cpu" = {
      interval = 2;
      format = "{usage}% ";
      min-length = 6;
    };

    "custom/temp" = {
      exec = "$HOME/Nix/home-manager/waybar/modules/temperature.sh";
      format = "{}";
      interval = 1;
      on-click = "kitty btop";
    };

    "backlight" = {
        device = "intel_backlight";
        format = "{percent}% {icon}";
        format-icons = [""];
        min-length = 7;
    };

    battery = {
        states = {
            warning = 30;
            critical = 15;
        };
        format = "{capacity}% {icon}";
        format-charging = "{capacity}% 󰂄";
        format-plugged = "{capacity}% 󰂄";
        format-alt = "{time} {icon}";
        format-icons = ["󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󱈏"];
    };

    tray = {
        icon-size = 16;
        spacing = 3;
    };

      };
    };

    style =
      ''
* {
    border: none;
    border-radius: 0;
    /* `otf-font-awesome` is required to be installed for icons */
    font-family: DejaVu Sans Mono;
    font-weight: bold;
    min-height: 20px;
}

window#waybar {
    background-color: rgba(0, 0, 0, 0.6);
}

window#waybar.hidden {
    opacity: 0.2;
}

#custom-rofi {
    margin-left: 8px;
    padding-right: 8px;
    padding-left: 8px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;
}

#workspaces {
    margin-left: 16px;
    border-radius: 10px;
    transition: none;

}

#workspaces button {
    transition: none;
    color: #7c818c;
    background: transparent;
    padding: 5px;
    font-size: 18px;
}

#workspaces button.persistent {
    color: #7c818c;
    font-size: 12px;
}

/* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */
#workspaces button:hover {
    transition: none;
    box-shadow: inherit;
    text-shadow: inherit;
    border-radius: inherit;
    color: #383c4a;
}

#workspaces button.active {
    color: white;
    border-radius: inherit;
}

#language {
    padding-left: 3px;
    padding-right: 3px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;

}

#keyboard-state {
    margin-right: 8px;
    padding-right: 16px;
    border-radius: 0px 10px 10px 0px;
    transition: none;
    color: #ffffff;

}

#custom-pacman {
    padding-left: 16px;
    padding-right: 8px;
    border-radius: 10px 0px 0px 10px;
    transition: none;
    color: #ffffff;

}

#custom-mail {
    margin-right: 8px;
    padding-right: 16px;
    border-radius: 0px 10px 10px 0px;
    transition: none;
    color: #ffffff;

}

#submap {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;

}

#clock {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;

}

#custom-weather {
    padding-right: 16px;
    border-radius: 0px 10px 10px 0px;
    transition: none;
    color: #ffffff;

}

#pulseaudio {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;

}

#pulseaudio.muted {
    background-color: #90b1b1;
    color: #2a5c45;
}

#custom-mem {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;

}

#cpu {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;

}

#custom-temp {
    margin-right: 8px;
    padding-left: 8px;
    padding-right: 8px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;

}

#backlight {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;

}

#battery {
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;

}

#battery.charging {
    color: #ffffff;
    background-color: #26A65B;
}

#battery.warning:not(.charging) {
    background-color: #ffbe61;
    color: black;
}

#battery.critical:not(.charging) {
    background-color: #f53c3c;
    color: #ffffff;
    animation-name: blink;
    animation-duration: 0.5s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;
    animation-direction: alternate;
}

#tray {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;

}

#custom-nm-applet {
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;

}

#custom-playerctl {
    margin-left: 6px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;
}

@keyframes blink {
    to {
        background-color: #ffffff;
        color: #000000;
    }
}
      '';
  };
}
