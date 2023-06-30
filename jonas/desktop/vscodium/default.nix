{ config, pkgs, ... }:

{
  programs.vscode = {
    enable = true;

    package = pkgs.vscodium;

    userSettings = {
      files = {
        trimFinalNewlines = true;
        insertFinalNewline = true;
        trimTrailingWhitespace = true;
      };

      editor = {
        mouseWheelZoom = true;
      };
    };

    # Setting this to true until I fully manage it through a json/yaml file.
    mutableExtensionsDir = true;

    extensions = with pkgs.vscode-extensions; [
      eamodio.gitlens
      bbenoist.nix
      hashicorp.terraform
    ];
  };
}
