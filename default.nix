{ config, pkgs, ... }:

{
  home.username = "jonas";
  home.homeDirectory = "/home/jonas";
  home.stateVersion = "22.11"; # Please read the comment before changing.

  programs.home-manager.enable = true; # Remember kids, if you don't include this then HM will forget itself.
}
