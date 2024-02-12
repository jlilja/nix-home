{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    sublime4
  ];

  home = {
    # https://github.com/petrkozorezov/mynixos/blob/9597b52ddc683bb07ab78e2c5a68632b30d30004/home/profiles/petrkozorezov/desktop/subl.nix#L68
    file.".config/sublime-text/Packages/User/Preferences.sublime-settings" = {
      text = builtins.toJSON {
        scroll_past_end = true;
        update_check = false;
        ensure_newline_at_eof_on_save = true;
        theme = "Afterglow.sublime-theme";
        color_scheme                      = "Packages/Theme - Afterglow/Afterglow-monokai.tmTheme";
      };
    };

    file.".config/sublime-text/Packages/User/Pretty JSON.sublime-settings" = {
      text = builtins.toJSON {
        brace_newline = false;
        bracket_newline = false;
      };
    };

    file.".config/sublime-text/Packages/User/Package Control.sublime-settings" = {
      text = builtins.toJSON {
        bootstrapped = true;
        in_process_packages = [ ];
        installed_packages = [
          "Package Control"

          "Pretty JSON"
          "JSON Stringify"

          "Theme - Afterglow"
        ];
      };
    };


    # TODO: Figure out the proper path for packages.
    # Seems like it differs depending on major version and OS.
    #   file.".config/sublime-text/Packages/Pretty\ JSON.sublime-package".source = pkgs.fetchFromGitHub {
    #     owner = "dzhibas";
    #     repo = "sublime_text_nushell";
    #     rev = "v1.9.0";
    #     sha256 = "sha256-L8vQNQZESvacsyVuzX9y8HnGZnaBqpNKoSYASkW4JLo=";
    #   };
  };
}
