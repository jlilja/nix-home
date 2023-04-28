{ config, pkgs, ... }:

{
  imports = [
    ./firefox.nix
    ./vscodium.nix
  ];

  home.packages = with pkgs; [
    # Media
    spotify # https://www.spotify.com/us/download/linux
    vlc

    # Networking
    postman

    # Productivity
    albert # https://albertlauncher.github.io
    timeshift # https://github.com/linuxmint/timeshift

    # Editing
    sublime4

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
}
