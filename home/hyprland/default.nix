{ config, pkgs, inputs, ... }:
{
  imports = [
    ./binds.nix
    ./settings.nix
    ./env.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
