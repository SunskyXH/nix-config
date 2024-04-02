{config, ...}:
let
  palette = config.colorScheme.palette;
  # pointer = config.home.pointerCursor;
in {
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$terminal" = "alacritty";
    "$menu" = "rofi -show drun -show-icons";

    monitor = ",preferred,auto,1";

    exec-once = [
      "hyprctl setcursor Bibata-Modern-Ice 24"
      "waybar"
      "dunst"
    ];

    input = {
      kb_layout = "us";
      follow_mouse = 1;
      touchpad = {
        natural_scroll = false;
      };
      sensitivity = "0 # -1.0 - 1.0, 0"; # means no modification.
    };

    general = {
      gaps_in = 5;
      gaps_out = 20;
      border_size = 2;
      "col.active_border" = "rgba(${palette.base0F}ee) rgba(${palette.base0D}ee) rgba(${palette.base09}ee) 45deg";
      "col.inactive_border" = "rgba(595959aa)";

      layout = "dwindle";

      allow_tearing = false;
      # resize_on_border = true;
    };

    decoration = {
      rounding = 10;
      blur = {
        enabled = true;
        size = 3;
        passes = 1;

        vibrancy = 0.1696;
      };

      drop_shadow = true;
      shadow_range = 4;
      shadow_render_power = 3;
      "col.shadow" = "rgba(1a1a1aee)";
    };

    animations = {
      enabled = true;
      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
      animation = [
        "windows, 1, 7, myBezier"
        "windowsOut, 1, 7, default, popin 80%"
        "border, 1, 10, default"
        "borderangle, 1, 8, default"
        "fade, 1, 7, default"
        "workspaces, 1, 6, default"
      ];
    };

    windowrulev2 = "stayfocused,class:(Rofi)";

    dwindle = {
      # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
      pseudotile = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
      preserve_split = true; # you probably want this
    };

    master = {
      # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
      new_is_master = true;
    };

    # touchpad gestures
    gestures = {
      workspace_swipe = true;
      workspace_swipe_forever = true;
    };

    misc = {
      # disable auto polling for config file changes
      disable_autoreload = true;
      force_default_wallpaper = 0; # -1 for enable
      animate_mouse_windowdragging = true;
      # we do, in fact, want direct scanout
      no_direct_scanout = false;
    };

    xwayland.force_zero_scaling = true;
    debug.disable_logs = false;
  };
}
