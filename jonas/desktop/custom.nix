{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    (writeShellScriptBin "blender" ''
      ${nixgl.nixGLIntel}/bin/nixGLIntel ${blender}/bin/blender
    '')


    (writeShellScriptBin "globalprotect" ''
      ${nixgl.nixGLIntel}/bin/nixGLIntel ${globalprotect-openconnect}/bin/gpclient
    '')
  ];
}
