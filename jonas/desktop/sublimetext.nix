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
