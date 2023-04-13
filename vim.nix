{ config, pkgs, ... }:

{
    programs.vim = {
        enable = true;
        defaultEditor = true;
        plugins = with pkgs.vimPlugins; [ vim-airline ];
        settings = { ignorecase = true; };
        extraConfig = ''
            set mouse=a
            set number relativenumber
        '';
    };
}
