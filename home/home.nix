{ config, pkgs, inputs, ... }:
{
  imports = [
    inputs.hyprland.homeManagerModules.default
    inputs.nix-colors.homeManagerModules.default
    ./rofi
    ./waybar
    ./hyprland
    ./alacritty
    ./fish
    ./git
    ./starship
    ./gtk
    ./dunst
  ];
  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-medium;
  home.username = "sunskyxh";
  home.homeDirectory = "/home/sunskyxh";

  home.packages = with pkgs;[
    # GUI
    emacs
    # google-chrome
    # chromium
    # ungoogled-chromium

    # utils
    fd # alternative to `find'
    ripgrep # recursively searches directories for a regex pattern
    jq # A lightweight and flexible command-line JSON processor
    eza # A modern replacement for `ls'
    fzf # A command-line fuzzy finder
    tree
    bat

    #misc
    which
    neofetch

    # monitor
    btop  # replacement of htop/nmon

    # dev
    cargo
    rustc
    rust-analyzer
    rustfmt
    clippy
        
    # nix related
    nixfmt
  ];

  home.sessionPath = [
    "$HOME/.config/emacs/bin"
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
