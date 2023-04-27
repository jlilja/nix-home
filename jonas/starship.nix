{ config, pkgs, ... }:

{
  programs.starship = {
    enable = true;

    enableZshIntegration = true;

    settings.sudo.disabled = false;
  };
}
