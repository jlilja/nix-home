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

      editor.mouseWheelZoom = true;

      extensions = {
        autoCheckUpdates = false;
        autoUpdate = false;
      };

      telemetry.telemetryLevel = "off";
      redhat.telemetry.enabled = false;
      gitlens.telemetry.enabled = false;

      "[yaml]".editor.defaultFormatter = "redhat.vscode-yaml";

      vim = {
        enableNeovim = true;
        neovimPath = "${pkgs.neovim}/bin/nvim";
      };

      terraform.languageServer.path = "${pkgs.terraform-ls}/bin/terraform-ls";
      ansible.ansible.path = "${pkgs.ansible}/bin/ansible";
    };

    mutableExtensionsDir = false;

    extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace (
      builtins.fromJSON (
        builtins.readFile ./extensions.json
      )
    );
  };
}
