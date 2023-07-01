{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      vim-airline
    ];

    extraConfig = ''
      set mouse=
      set number
      set encoding=utf-8
      set ignorecase
      set smartcase
    '';
  };
}
