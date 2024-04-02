{ config, lib, pkgs, ... }:

{
   gtk.enable = true;

   gtk.cursorTheme = {
     package = pkgs.bibata-cursors;
     name = "Bibata-Modern-Ice";
   };

   gtk.theme = {
     package = pkgs.adw-gtk3;
     name = "adw-gtk3";
   };
}
