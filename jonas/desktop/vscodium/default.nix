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

      vim = {
        enableNeovim = true;
        neovimPath = "${pkgs.neovim}/bin/nvim";
      };

      terraform = {
        languageServer = {
          path = "${pkgs.terraform-ls}/bin/terraform-ls";
        };
      };

      ansible = {
        ansible = {
          path = "${pkgs.ansible}/bin/ansible";
        };
      };
    };

    mutableExtensionsDir = false;

    extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace (
      builtins.fromJSON (
        builtins.readFile ./extensions.json
      )
    );
  };
}
