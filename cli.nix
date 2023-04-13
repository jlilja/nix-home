{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        gping
        htop
        jq
    ];
}
