{ config, pkgs, inputs, ... }:
{
  imports = [
    ./binds.nix
    ./settings.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
