{ config, lib, pkgs, ... }:

{
  config = {
    nixpkgs.hostPlatform = "x86_64-linux";

    environment.etc = {
    #   "foo.conf".text = ''
    #     launch_the_rockets = true
    #   '';
    };
    systemd.services = {
    #   foo = {
    #     enable = true;
    #     serviceConfig = {
    #       Type = "oneshot";
    #       RemainAfterExit = true;
    #     };
    #     wantedBy = [ "multi-user.target" ];
    #     script = ''
    #       ${lib.getBin pkgs.hello}/bin/hello
    #       echo "We launched the rockets!"
    #     '';
    #   };
    };
  };
}