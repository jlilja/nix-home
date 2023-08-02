{ config, pkgs, ... }:

{
  imports = [
    ./neovim.nix
    ./git.nix
    ./ssh.nix
    ./zsh
    ./starship.nix
    ./custom.nix
  ];

  home.packages = with pkgs; [
    # Infrastructure
    terraform
    terragrunt
    ansible
    packer
    dive # https://github.com/wagoodman/dive
    trivy # https://github.com/aquasecurity/trivy

    # Programming
    nodejs-16_x
    go

    # Utilities
    go-task
    jq
    yq-go
    yamllint

    # CLI
    zsh
    nix # Fix for nix to make sure it gets added to $PATH when zsh isn't the the initial shell.
    gping
    htop
    tealdeer # https://github.com/dbrgn/tealdeer
    screenkey # https://gitlab.com/screenkey/screenkey
    neofetch
    awscli2

    yt-dlp
  ];
}
