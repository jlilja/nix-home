{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    sublime4
  ];

  home = {
    file.".config/sublime-text/Packages/User/Preferences.sublime-settings" = {
      text = builtins.toJSON {
        scroll_past_end = true;
        update_check = false;
        ensure_newline_at_eof_on_save = true;
      };
    };

    file.".config/sublime-text/Packages/User/Pretty JSON.sublime-settings" = {
      text = builtins.toJSON {
        brace_newline = false;
        bracket_newline = false;
      };
    };

    # TODO: Figure out the proper path for packages.
    # Seems like it differs depending on major version and OS.
    # https://github.com/petrkozorezov/mynixos/blob/9597b52ddc683bb07ab78e2c5a68632b30d30004/home/profiles/petrkozorezov/desktop/subl.nix#L68

    #   file.".config/sublime-text/Packages/Pretty\ JSON.sublime-package".source = pkgs.fetchFromGitHub {
    #     owner = "dzhibas";
    #     repo = "sublime_text_nushell";
    #     rev = "v1.9.0";
    #     sha256 = "sha256-L8vQNQZESvacsyVuzX9y8HnGZnaBqpNKoSYASkW4JLo=";
    #   };
  };
}
