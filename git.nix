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

    extraConfig = {
      commit.gpgsign = true;
      gpg.format = "ssh";
      init.defaultBranch = "main";
      push.default = "matching";
      pull.rebase = true;
    };

    ignores = [
      "node_modules/"
    ];
  };
};
}
