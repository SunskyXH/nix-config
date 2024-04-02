{ pkgs, config, ... }:

let
  palette = config.colorScheme.palette;
in {
  programs.rofi = {
    enable = true;
    font = "Iosevka 20";
    theme = "gruvbox-dark";
  };
}
