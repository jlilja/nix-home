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
    # Infrastructure as code
    terraform
    terragrunt

    # Automation / configuration as code
    packer
    ansible

    # Docker
    dive # https://github.com/wagoodman/dive
    trivy # https://github.com/aquasecurity/trivy

    # K8s
    kubectl

    # Linting
    yamllint
    ansible-lint
    shellcheck

    # Programming
    # nodejs-16_x
    go

    # Utilities
    go-task
    jq
    yq-go

    # Virtualisation
    qemu

    # AWS
    awscli2
    # aws-sso-cli

    # CLI
    zsh
    nix # Fix for nix to make sure it gets added to $PATH when zsh isn't the the initial shell.
    gping
    htop
    tealdeer # https://github.com/dbrgn/tealdeer
    screenkey # https://gitlab.com/screenkey/screenkey
    neofetch

    # Misc
    yt-dlp
  ];
}
