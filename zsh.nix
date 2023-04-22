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

    initExtra = ''
      export NVM_DIR="$HOME/.nvm"
          [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
          [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

      export PATH=/sbin:$PATH
    '';
  };
}
