{ config, lib, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
      ll = "eza -lah";
      la = "eza -a";
    };
  };
}
