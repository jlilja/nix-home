{ config, pkgs, ... }:

{
  imports = [
    ./firefox.nix
    ./vscodium
    ./rofi
    ./sublimetext.nix
    ./custom.nix
    # ./gaming/wow.nix
  ];

  home.packages = with pkgs; [
    # Media
    spotify # https://www.spotify.com/us/download/linux
    vlc

    # Productivity
    timeshift # https://github.com/linuxmint/timeshift
    hugo

    # Secrets
    _1password-cli
    _1password-gui

    # IDEs
    jetbrains.goland

    # Network
    openvpn
    nmap

    # secops
    zap
    postman
    metasploit
    wpscan
    sqlmap
    burpsuite

    # Chat apps
    discord
    signal-desktop
    slack
    telegram-desktop
  ];

  home = {
    sessionVariables = {
      SSH_AUTH_SOCK = "$HOME/.1password/agent.sock"; # Tell SSH to use 1pass as its ssh agent.
      GTK_THEME = "Adwaita-dark"; # Override the GTK setting of that theme to display. Feels a bit dirty.
    };
  };

  gtk = {
    enable = true;

    # This will not set the theme either. But if I want to install
    # a non-standard theme then this would be the place.
    # theme = {
    #   package = pkgs.gnome.gnome-themes-extra;
    #   name = "Adwaita-dark";
    # };
  };

  # Might need this. Keeping it, like a hoarder.
  # qt = {
  #   enable = true;
  #   platformTheme = "gtk";
  #   style.name = "adwaita-gtk";
  # };

  # This one will magically let rofi know of good XDG paths where applications live.
  targets.genericLinux.enable = true; # Boolean | https://rycee.gitlab.io/home-manager/options.html#opt-targets.genericLinux.enable
}
