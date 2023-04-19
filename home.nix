{ config, pkgs, ... }:

{
  imports = [
    ./firefox.nix
    ./neovim.nix
    ./cli.nix
    ./zsh.nix
    ./vscodium.nix
  ];

  home.username = "jonas";
  home.homeDirectory = "/home/jonas";

  home.stateVersion = "22.11"; # Please read the comment before changing.

  home.packages = with pkgs; [
    # Media
    spotify # https://www.spotify.com/us/download/linux
    vlc

    # Infrastructure
    terraform

    # Productivity
    albert # https://albertlauncher.github.io

    # Editing
    sublime4

    # CLI related
    zsh
    nix # Fix for nix to make sure it gets added to $PATH when zsh isn't the the initial shell.

    # Chat apps
    teams-for-linux # Open-Source Teams Electron App (https://github.com/IsmaelMartinez/teams-for-linux)
    slack
    signal-desktop
  ];

  home.file = {};

  nixpkgs.config.allowUnfree = true; # Boolean | To allow whether nix should download non free software.
  programs.home-manager.enable = true;

  targets.genericLinux.enable = true; # Boolean | https://rycee.gitlab.io/home-manager/options.html#opt-targets.genericLinux.enable
}
