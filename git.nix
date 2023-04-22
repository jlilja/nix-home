{ config, pkgs, ... }:

{
  programs = {
    # gh = {
    #   enable = true;
    #   settings = {
    #     git_protocol = "ssh";
    #   };
    # };

    git = {
      enable = true;

      userEmail = "jonas@lilja.io";
      userName = "Jonas Lilja";

      signing = {
        key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBPvevZPoqvBIKWco6Ckcf70u1ibQc1OqNXZMrJ3dOMu";
        signByDefault = true;
      };


      # extraConfig = {
      #   push = {
      #     default = "matching";
      #   };

      #   pull = {
      #     rebase = true;
      #   };

      #   init = {
      #     defaultBranch = "main";
      #   };
      # };

      # ignores = [
      #   "node_modules/"
      # ];
    };
  };
}
