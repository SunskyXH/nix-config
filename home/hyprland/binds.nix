let
  # binds $mod + [shift +] {1..10} to [move to] workspace {1..10}
  workspaces = builtins.concatLists (builtins.genList (
      x: let
        ws = let
          c = (x + 1) / 10;
        in
          builtins.toString (x + 1 - (c * 10));
      in [
        "$mod, ${ws}, workspace, ${toString (x + 1)}"
        "$mod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
      ]
    )
    10);
in {
  wayland.windowManager.hyprland.settings = {
    bind = [
      # Basic
      "$mod, M, exit,"
      "$mod, Q, killactive,"
      "$mod, F, fullscreen,"

      # Utility
      "$mod, Return, exec, $terminal"
      "$mod, E,      exec, $fileManager"
      "$mod, R,      exec, $menu"

       # Move Focus
      "$mod, left,  movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, up,    movefocus, u"
      "$mod, down,  movefocus, d"

      # Scroll through existing workspaces with $mod + scroll
      "$mod, mouse_down, workspace, e+1"
      "$mod, mouse_up,   workspace, e-1"
    ]
    ++ workspaces;
    bindm = [
      # Move/resize windows with $mod + LMB/RMB and dragging
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];
  };

}
