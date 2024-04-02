{ config, lib, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      line_break.disabled = true;
      character = {
        success_symbol = "[~>](bold green)";
        error_symbol = "[~>](bold red)";
      };
    };
  };
}
