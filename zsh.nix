{ config, pkgs, ... }:

{
    programs.zsh = {
        enable = true;

        oh-my-zsh = {
            enable = true;
            plugins = [ "git" "z" ];
            theme = "robbyrussell";
        };

        initExtra = ''
            export NVM_DIR="$HOME/.nvm"
            [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
            [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
        '';
    };
}
