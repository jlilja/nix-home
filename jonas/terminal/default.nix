{ config, pkgs, ... }:

{
  imports = [
    ./neovim.nix
    ./git.nix
    ./ssh.nix
    ./zsh
    ./starship.nix
  ];

  home.packages = with pkgs; [
    # Infrastructure
    terraform
    ansible
    dive # https://github.com/wagoodman/dive

    # Programming
    nodejs-16_x

    # Productivity
    albert # https://albertlauncher.github.io
    timeshift # https://github.com/linuxmint/timeshift

    # CLI
    zsh
    nix # Fix for nix to make sure it gets added to $PATH when zsh isn't the the initial shell.
    gping
    htop
    jq
    fzf # https://github.com/junegunn/fzf
    tealdeer
  ];
}
