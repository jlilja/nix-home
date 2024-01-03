{ config, pkgs, ... }:

{
  # https://mipmip.github.io/home-manager-option-search/?query=starship
  programs.starship = {
    enable = true;

    enableZshIntegration = true;

    settings.sudo.disabled = false;

    settings = {
      command_timeout = 2000;
    };
  };
}
