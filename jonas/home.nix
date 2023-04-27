{ config, pkgs, ... }:

{
  imports = [
    ./firefox.nix
    ./neovim.nix
    ./git.nix
    ./ssh.nix
    ./zsh
    ./starship.nix
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
    ansible
    dive # https://github.com/wagoodman/dive

    # Programming
    nodejs-16_x

    # Networking
    postman

    # Productivity
    albert # https://albertlauncher.github.io
    timeshift # https://github.com/linuxmint/timeshift

    # Editing
    sublime4

    # CLI
    zsh
    nix # Fix for nix to make sure it gets added to $PATH when zsh isn't the the initial shell.
    gping
    htop
    jq
    fzf # https://github.com/junegunn/fzf

    # Chat apps
    teams-for-linux # Open-Source teams electron app https://github.com/IsmaelMartinez/teams-for-linux
    slack
    signal-desktop
    discord
  ];

  home = {
    file = {
      ".config/autostart/albert.desktop".source = "${pkgs.albert}/share/applications/albert.desktop";
    };

    sessionVariables = {
      SSH_AUTH_SOCK = "$HOME/.1password/agent.sock";
    };
  };

  nixpkgs.config.allowUnfree = true; # Boolean | To allow whether nix should download non free software.
  programs.home-manager.enable = true;

  targets.genericLinux.enable = true; # Boolean | https://rycee.gitlab.io/home-manager/options.html#opt-targets.genericLinux.enable
}
