{ config, pkgs, ... }:

{
  imports = [
    ./firefox.nix
    ./vscodium
    ./rofi
    ./sublimetext.nix
    ./custom.nix
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

    # Chat apps
    discord
    signal-desktop
    slack
    # telegram-desktop
    teams-for-linux # Open-Source teams electron app https://github.com/IsmaelMartinez/teams-for-linux

    # gaming
    # lutris
    # wine # Needs wine32 patching. See more on readme.md
    # winetricks

    # vulkan-headers
    # vulkan-loader
    # vulkan-tools
  ];

  home = {
    sessionVariables = {
      SSH_AUTH_SOCK = "$HOME/.1password/agent.sock";
      WINEARCH = "win32";
    };
  };

  # This one will magically let rofi know of good XDG paths where applications live.
  targets.genericLinux.enable = true; # Boolean | https://rycee.gitlab.io/home-manager/options.html#opt-targets.genericLinux.enable
}
