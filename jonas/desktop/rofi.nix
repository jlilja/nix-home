{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;

    extraConfig = {
      modi = "run,drun";
    };
  };
}
