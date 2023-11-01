{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "z"];
      theme = "robbyrussell";
    };

    shellAliases = {
      fuckdocker = "docker system prune";
      vim = "nvim";
      whichrepo = "gh repo view --web";
      whereami = "aws iam list-account-aliases | jq -r '.AccountAliases[0]'";
    };

    enableAutosuggestions = true;

    initExtra = builtins.readFile ./zshrc;
  };

  # https://github.com/junegunn/fzf
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
