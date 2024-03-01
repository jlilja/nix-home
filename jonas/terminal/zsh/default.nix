{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "z" ];
      theme = "robbyrussell";
    };

    shellAliases = {
      fuckdocker = "docker system prune";
      fuckdockeralittle = "docker builder prune";
      vim = "nvim";
      whichrepo = "gh repo view --web";
      whereami = "aws iam list-account-aliases | jq -r '.AccountAliases[0]'";
      bakefmt = "packer fmt docker-bake.hcl"; # This is nice for docker-bake.hcl file which isn't a packer file but still needs formatting.
      # ecr-login = "docker login -u AWS --password-stdin $(aws ecr get-login-password --region eu-west-1) http://551980963131.dkr.ecr.eu-west-1.amazonaws.com/";
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
