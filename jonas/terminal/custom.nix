{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    (writeShellScriptBin "longifyurl" (builtins.readFile ../scripts/longify_url.sh))
  ];
}
