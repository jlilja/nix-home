{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "z" "dnf" ];
      theme = "robbyrussell";
    };

    shellAliases = {
      fuckdocker = "docker system prune";
      vim = "nvim";
    };

    enableAutosuggestions = true;

    initExtra = builtins.readFile ./zshrc.sh;
  };

  # https://github.com/junegunn/fzf
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
