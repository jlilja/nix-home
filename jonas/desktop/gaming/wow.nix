{ config, pkgs, ... }:

let
  wowpath = "Games/turtlewow/drive_c/Program Files (x86)/turtle_client_117/Interface/AddOns";
in
{
  #####################
  ### Shaman addons ###
  #####################

  # UI for managing all totems.
  # https://github.com/Road-block/ArchiTotem
  home.file."${wowpath}/ArchiTotem/".source = pkgs.fetchFromGitHub {
    owner = "Road-block";
    repo = "ArchiTotem";
    rev = "89bdd8d";
    sha256 = "sha256-xNQKrM2lo9KCfqpWYhjkaFFXmLIo+1ar1zttk/wFJZ0=";
  };

  #####################
  #### Misc addons ####
  #####################

  # Show all loot available for dungeons and raids. Updated for Turtle wow.
  # https://github.com/Lexiebean/AtlasLoot
  home.file."${wowpath}/AtlasLoot/".source = pkgs.fetchFromGitHub {
    owner = "Lexiebean";
    repo = "AtlasLoot";
    rev = "fd2c1f7";
    sha256 = "sha256-V4U6WtWmU4KV0Y5n0IjV35sRpt6x2fuKrK4EXVEoETk=";
  };

  # UI for managing raid markings.
  # https://github.com/webdkpthroaway/banana
  home.file."${wowpath}/banana/".source = pkgs.fetchFromGitHub {
    owner = "webdkpthroaway";
    repo = "banana";
    rev = "a0c1355";
    sha256 = "sha256-5ZYe72bWN6thPZZhiTmea2lSsOXOxP4G2X3zNZjyIOA=";
  };

  # Display better stats about character and what features it yields.
  # https://github.com/Lexiebean/BetterCharacterStats
  home.file."${wowpath}/BetterCharacterStats/".source = pkgs.fetchFromGitHub {
    owner = "Lexiebean";
    repo = "BetterCharacterStats";
    rev = "b8ce1f0";
    sha256 = "sha256-/FRJFJODEwReL9vXG0EtsJj/nqtyOXn4+6Bll8ivpbk=";
  };

  # Raid events warning emitter addon.
  # https://github.com/Lexiebean/BigWigs
  # home.file."${wowpath}/BigWigs/".source = pkgs.fetchFromGitHub {
  #   owner = "Lexiebean";
  #   repo = "BigWigs";
  #   rev = "ac60834";
  #   sha256 = "sha256-61zfE3TGYjy5VcRVvziOLZMgygRbJonpuCBV8ECX78E=";
  # };

  # Raid events warning emitter addon for CThun boss.
  # https://github.com/0ldi/CThunWarner
  home.file."${wowpath}/CThunWarner/".source = pkgs.fetchFromGitHub
    {
      owner = "0ldi";
      repo = "CThunWarner";
      rev = "75fc117";
      sha256 = "sha256-wlqIQ4SxVoerdAHM4KlW93HV1BADwdvWaOauyHe7+l8=";
    } + "/CThunWarner";

  # Handle removing poison, diseases, magic, and curses.
  # https://github.com/Lexiebean/Decursive
  home.file."${wowpath}/Decursive/".source = pkgs.fetchFromGitHub {
    owner = "Lexiebean";
    repo = "Decursive";
    rev = "f5c0050";
    sha256 = "sha256-2zP5A7FE+/OXXZ7P1YKWzpXohX7I64xWwOFfG7nY7Gw=";
  };

  # Managing multiple sets of gears for raiding.
  # https://github.com/McPewPew/ItemRack
  home.file."${wowpath}/ItemRack/".source = pkgs.fetchFromGitHub {
    owner = "McPewPew";
    repo = "ItemRack";
    rev = "cab8bb4";
    sha256 = "sha256-a0hmP+tonjiheCM8czKe5Kxj/ZnpWO0rjuh/4h4ecr4=";
  };

  # Adds extra QoL settings for raiding and handling needing/greeding on loot.
  # https://github.com/Lexiebean/_LazyPig
  home.file."${wowpath}/_LazyPig/".source = pkgs.fetchFromGitHub {
    owner = "Lexiebean";
    repo = "_LazyPig";
    rev = "88a0aaa";
    sha256 = "sha256-eDh9twpGKOIu8UoZs20hEROKjIsbzkz+ZYqen63UcE4=";
  };

  # Questing assistance tool. Vanilla wow specific.
  # https://github.com/shagu/pfQuest
  home.file."${wowpath}/pfQuest/".source = pkgs.fetchFromGitHub {
    owner = "shagu";
    repo = "pfQuest";
    rev = "81543cc";
    sha256 = "sha256-f5aq6giep2+/M8Mme9AoJ/XpE+z5YnxShIRr1nG8AL0=";
  };

  # Questing assistance tool. Turtle wow specific.
  # https://github.com/shagu/pfQuest-turtle
  home.file."${wowpath}/pfQuest-turtle/".source = pkgs.fetchFromGitHub {
    owner = "shagu";
    repo = "pfQuest-turtle";
    rev = "fa3a115";
    sha256 = "sha256-CEzZPfROCWZpuihPEWEtSfCFOsSLfyHmUXE5ZOxDioU=";
  };

  # UI framework.
  # https://github.com/shagu/pfUI/
  home.file."${wowpath}/pfUI/".source = pkgs.fetchFromGitHub {
    owner = "shagu";
    repo = "pfUI";
    rev = "4afd60f";
    sha256 = "sha256-O6vn0+eWLO0x/h8udoR8KFZ0VEBnAAzmWiecmEs+I6g=";
  };

  # Buffing helper for raids.
  # https://github.com/melbaa/rabuffs
  home.file."${wowpath}/rabuffs/".source = pkgs.fetchFromGitHub {
    owner = "melbaa";
    repo = "rabuffs";
    rev = "65b8ca1";
    sha256 = "sha256-59V5745hy+Kj1xmOPJILQnJCyT10BcH7ziwg/YHzIUg=";
  };

  # UI for EPGP looting points.
  # https://github.com/Road-block/shootyepgp
  home.file."${wowpath}/shootyepgp/".source = pkgs.fetchFromGitHub {
    owner = "Road-block";
    repo = "shootyepgp";
    rev = "39948dc";
    sha256 = "sha256-9ZOoDW7zeHpXiqCijhOrH7WcbG3bTKrLadFd2pq4Aj4=";
  };

  # Easily swapping trinkets from inventory.
  # https://github.com/S4V4GENZ/TrinketMenu
  home.file."${wowpath}/TrinketMenu/".source = pkgs.fetchFromGitHub {
    owner = "S4V4GENZ";
    repo = "TrinketMenu";
    rev = "4130247";
    sha256 = "sha256-5mrW8qyxli9XtDyJhxT2uXI1oOMjIROZLw7ACcqZQTM=";
  };
}
