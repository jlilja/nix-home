{ config, pkgs, ... }:

let
  nixgl = "${pkgs.nixgl.nixGLIntel}/bin/nixGLIntel";
in
{
  home.packages = with pkgs; [
    (writeShellScriptBin "blender" ''
      ${nixgl} ${blender}/bin/blender "$@"
    '')

    (writeShellScriptBin "calibre" ''
      ${nixgl} ${calibre}/bin/calibre "$@"
    '')

    # (writeShellScriptBin "globalprotect" ''
    #   ${nixgl} ${globalprotect-openconnect}/bin/gpclient "$@"
    # '')
  ];
}
