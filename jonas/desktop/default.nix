{ config, pkgs, ... }:

{
  imports = [
    ./firefox.nix
    ./vscodium.nix
    ./rofi
  ];

  home.packages = with pkgs; [
    # Media
    spotify # https://www.spotify.com/us/download/linux
    vlc

    # Networking
    postman

    # Productivity
    timeshift # https://github.com/linuxmint/timeshift
    hugo

    # Editing
    sublime4

    # Chat apps
    discord
    signal-desktop
    slack
    teams-for-linux # Open-Source teams electron app https://github.com/IsmaelMartinez/teams-for-linux
  ];

  home = {
    sessionVariables = {
      SSH_AUTH_SOCK = "$HOME/.1password/agent.sock";
    };
  };

  # This one will magically let rofi know of good XDG paths where applications live.
  targets.genericLinux.enable = true; # Boolean | https://rycee.gitlab.io/home-manager/options.html#opt-targets.genericLinux.enable
}
