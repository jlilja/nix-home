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
    tenv

    # Automation / configuration as code
    ansible
    packer

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
    go

    # Utilities
    go-task
    gnumake42
    jq
    yq-go

    # AWS
    awscli2

    # CLI
    zsh
    nix # Fix for nix to make sure it gets added to $PATH when zsh isn't the the initial shell.
    tealdeer # https://github.com/dbrgn/tealdeer
    screenkey # https://gitlab.com/screenkey/screenkey
    neofetch

    # CLI alternative tools to standard unix tools
    gping # Graphical representation of pinging instead of "ping"
    htop # "Top" tool with pretty colors and some nicer representation of per core usage
    bat # Like "cat", but it has syntax highlighting

    # Misc
    yt-dlp
  ];
}
