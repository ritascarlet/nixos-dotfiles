{config, pkgs, ...}: {

	wayland.windowManager.hyprland = {
    		enable = true;
    		xwayland.enable = true;


	settings = {
      		"$mainMod" = "SUPER";

	monitor = [
		"DP-1, 2560x1080@75, 0x0, 1"
		"eDP-1, 1920x1080@60, 365x1080 , 1"
	];

	env = [
        	"XCURSOR_SIZE,24"
		"HYPRCURSOR_SIZE,24"
		"HYPRCURSOR_THEME, Bibata-Modern-Classic"
		"XDG_CURRENT_DESKTOP,Hyprland"
	];

	debug = {
		disable_logs = false;
		enable_stdout_logs = true;
	};

	input = {
		kb_layout = "us, ru";
		kb_options = "grp:alt_shift_toggle";

		follow_mouse = 1;

	touchpad = {
          natural_scroll = true;
	};

	sensitivity = 0;
	accel_profile = "flat";

	};

	general = {
		gaps_in = 6;
		gaps_out = 12;
		border_size = 0;

		"col.active_border" = "rgb(f0f8ff) rgb(808080) 45deg";
		"col.inactive_border" = "rgb(808080)";

		layout = "dwindle";

		resize_on_border = false;

		allow_tearing = true;
	};

	decoration = {
		rounding = 20;
		active_opacity = "1.0";
		inactive_opacity = "0.98";

	shadow = {
		enabled = true;
		range = 25;
		render_power = 15;
		color = "rgb(101010)";
	};

	blur = {
		enabled = true;
		size = 5;
		passes = 3;
		contrast = "1.5";
		vibrancy = "0.1696";
		};

	};

	animations = {
		enabled = true;


	bezier =  [
		"easeOutQuint,0.23,1,0.32,1"
		"easeInOutCubic,0.65,0.05,0.36,1"
		"linear,0,0,1,1"
		"almostLinear,0.5,0.5,0.75,1.0"
		"quick,0.15,0,0.1,1"
		"myBezier, 0.05, 0.9, 0.1, 1.05"
	];

	animation = [
    "windows, 1, 7, myBezier, popin 10%"
    "windowsOut, 1, 7, default, popin 80%"
    "border, 1, 15, default"
    "borderangle, 1, 15, default"
    "fade, 1, 5, default"
    "workspaces, 1, 6, default"
	];

	layerrule = [
	"animation slide, rofi"
	"ignorezero, rofi"
	];
};

	dwindle = {
		pseudotile = true;
		preserve_split = true;
	};

	master = {
		new_status = "master";
	};

	gestures = {
		workspace_swipe = true;
		workspace_swipe_create_new = true;
		workspace_swipe_forever = true;
		workspace_swipe_distance = 300;
	};

	misc = {
		force_default_wallpaper = "0";
		disable_hyprland_logo = true;
	};

	exec-once = [
	"dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
	];

	bind = [
		" , mouse:281, pass, class:^(discord)$"
		" , mouse:282, pass, class:^(discord)$"
		" , Control_R, pass, class:^(discord)$"
		"$mainMod, RETURN, exec, kitty"
		"$mainMod, Z, exec, zeditor"
		"$mainMod, W, killactive,"
		"$mainMod, Delete, exit,"
		"$mainMod, E, exec, nemo"
		"$mainMod, V, togglefloating,"
		"$mainMod, R, exec, rofi -show drun"
		"$mainMod, P, pseudo,"
		"$mainMod, J, togglesplit,"
		"$mainMod, K, swapsplit,"
		"$mainMod, F, fullscreen,"
		"$mainMod, L, exec, hyprlock"
		"$mainMod, TAB, cyclenext"

		"$mainMod SHIFT, S, exec, $HOME/Nix/home-manager/hypr/hyprland-modules/screenshot.sh"

		"$mainMod, left, movefocus, l"
		"$mainMod, right, movefocus, r"
		"$mainMod, up, movefocus, u"
		"$mainMod, down, movefocus, d"

		"$mainMod, 1, workspace, 1"
		"$mainMod, 2, workspace, 2"
		"$mainMod, 3, workspace, 3"
		"$mainMod, 4, workspace, 4"
		"$mainMod, 5, workspace, 5"
		"$mainMod, 6, workspace, 6"
		"$mainMod, 7, workspace, 7"
		"$mainMod, 8, workspace, 8"
		"$mainMod, 9, workspace, 9"
		"$mainMod, 0, workspace, 10"

		"$mainMod SHIFT, 1, movetoworkspace, 1"
		"$mainMod SHIFT, 2, movetoworkspace, 2"
		"$mainMod SHIFT, 3, movetoworkspace, 3"
		"$mainMod SHIFT, 4, movetoworkspace, 4"
		"$mainMod SHIFT, 5, movetoworkspace, 5"
		"$mainMod SHIFT, 6, movetoworkspace, 6"
		"$mainMod SHIFT, 7, movetoworkspace, 7"
		"$mainMod SHIFT, 8, movetoworkspace, 8"
		"$mainMod SHIFT, 9, movetoworkspace, 9"
		"$mainMod SHIFT, 0, movetoworkspace, 10"

		"$mainMod, S, togglespecialworkspace, magic"
#		"$mainMod SHIFT, S, movetoworkspace, special:magic"

		"$mainMod, mouse_down, workspace, e+1"
		"$mainMod, mouse_up, workspace, e-1"

		"$mainMod SHIFT, right, resizeactive, 65 0"
		"$mainMod SHIFT, left, resizeactive, -65 0"
		"$mainMod SHIFT, up, resizeactive, 0 -65"
		"$mainMod SHIFT, down, resizeactive, 0 65"

	];

	bindm = [
		"$mainMod, mouse:272, movewindow"
		"$mainMod, mouse:273, resizewindow"
		];

	bindel = [
		",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
		",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
		",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
		",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
		",XF86MonBrightnessUp, exec, brightnessctl s 5%+"
		",XF86MonBrightnessDown, exec, brightnessctl s 5%-"
	];

	bindl = [
		", XF86AudioNext, exec, playerctl next"
		", XF86AudioPause, exec, playerctl play-pause"
		", XF86AudioPlay, exec, playerctl play-pause"
		", XF86AudioPrev, exec, playerctl previous"
	];

	workspace = [
		"1, monitor:DP-1"
		"2, monitor:DP-1"
		"3, monitor:DP-1"
		"4, monitor:DP-1"
		"5, monitor:DP-1"
		"6, monitor:DP-1"
		"7, monitor:DP-1"
		"8, monitor:DP-1"
		"9, monitor:DP-1"
		"10, monitor:eDP-1"
	];

	windowrule = [
		"opacity 0.9 0.9, ^(kitty)$"
		"opacity 0.9 0.9, ^(discord)$"
		"opacity 0.9 0.9, ^(dev.zed.Zed)$"
		"animation popin, ^(kitty)$"
	];

			};
		};

}
