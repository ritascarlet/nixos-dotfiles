{
  programs.hyprlock = {
    enable = true;

    settings = {

      background = {
        monitor = "eDP-1";
        path = "~/Nix/home-manager/wallpapers/waguri.jpg";
        color = "rgba(25, 20, 20, 1.0)";
        blur_passes = 15;
        blur_size = 2;
        noise = 0;
        contrast = 0;
        brightness = 0;
        vibrancy = 0;
        vibrancy_darkness = 0.0;
      };

      input-field = {
        monitor = "eDP-1";
        size = "300, 30";
        outline_thickness = 0;
        dots_size = 0.25; # Scale of input-field height, 0.2 - 0.8
        dots_spacing = 0.55; # Scale of dots' absolute size, 0.0 - 1.0
        dots_center = true;
        dots_rounding = -1;
        outer_color = "rgba(242, 243, 244, 0)";
        inner_color = "rgba(242, 243, 244, 0)";
        font_color = "rgba(242, 243, 244, 0.75)";
        fade_on_empty = false;
#        placeholder_text = # Text rendered in the input box when it's empty.
        hide_input = false;
        check_color = "rgba(204, 136, 34, 0)";
        fail_color = "rgba(204, 34, 34, 0)"; # if authentication failed, changes outer_color and fail message color
        fail_text = "$FAIL <b>($ATTEMPTS)</b>"; # can be set to empty
        fail_transition = 300; # transition time in ms between normal outer_color and fail_color
        capslock_color = -1;
        numlock_color = -1;
        bothlock_color = -1; # when both locks are active. -1 means don't change outer color (same for above)
        invert_numlock = false; # change color if numlock is off
        swap_font_color = false; # see below
        position = "0, -468";
        halign = "center";
        valign = "center";
      };

      label = {
          monitor = "eDP-1";
          text = "'cmd[update:1000] echo '$(date +'%A, %B %d')'";
          color = "rgba(242, 243, 244, 0.75)";
          font_size = 20;
          font_family = "JetBrains Mono";
          position = "0, 405";
          halign = "center";
          valign = "center";
        };



      };





    };
}
