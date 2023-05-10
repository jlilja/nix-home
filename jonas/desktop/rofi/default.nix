{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;

    terminal = "/usr/bin/xfce4-terminal";
    extraConfig.modi = "drun";
    theme = ./theme.rafi;
  };
}
