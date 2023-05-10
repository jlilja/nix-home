{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;

    userEmail = "jonas@lilja.io";
    userName = "Jonas Lilja";

    signing = {
      key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBPvevZPoqvBIKWco6Ckcf70u1ibQc1OqNXZMrJ3dOMu";
      signByDefault = true;
    };

    aliases = {
      lol = "log --graph --decorate --oneline --abbrev-commit";
    };

    extraConfig = {
      commit.gpgsign = true;
      gpg.format = "ssh";
      init.defaultBranch = "main";
      push.default = "matching";
      pull.rebase = true;
      core.editor = "nvim";
    };

    ignores = [
      "node_modules/"
    ];
  };

  programs.gh = {
    enable = true;

    settings.git_protocol = "ssh";
  };
}
