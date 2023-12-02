{ config, pkgs, ... }:

let
    wowpath = "Games/turtlewow/drive_c/Program Files (x86)/turtle_client_117/Interface/AddOns";
in
{
    # Managing multiple sets of gears for raiding.
    home.file."${wowpath}/ItemRack/".source = pkgs.fetchFromGitHub {
       owner = "McPewPew";
       repo = "ItemRack";
       rev = "cab8bb4";
       sha256 = "sha256-a0hmP+tonjiheCM8czKe5Kxj/ZnpWO0rjuh/4h4ecr4=";
    };

    # Easily swapping trinkets from inventory.
    home.file."${wowpath}/TrinketMenu/".source = pkgs.fetchFromGitHub {
       owner = "S4V4GENZ";
       repo = "TrinketMenu";
       rev = "4130247";
       sha256 = "sha256-5mrW8qyxli9XtDyJhxT2uXI1oOMjIROZLw7ACcqZQTM=";
    };

    # Questing assistance tool. Vanilla wow specific.
    home.file."${wowpath}/pfQuest/".source = pkgs.fetchFromGitHub {
       owner = "shagu";
       repo = "pfQuest";
       rev = "e463c2f";
       sha256 = "sha256-J3xxpJuZE3qJY3/o8/npFmK0UKNe5txlBBcEwu2c6as=";
    };

    # Questing assistance tool. Turtle wow specific.
    home.file."${wowpath}/pfQuest-turtle/".source = pkgs.fetchFromGitHub {
       owner = "shagu";
       repo = "pfQuest-turtle";
       rev = "e311e76";
       sha256 = "sha256-VRfwERKaO8N2WBAyltwiiY4vu2KhU44lSnTZO74Oukw=";
    };

    # UI framework.
    home.file."${wowpath}/pfUI/".source = pkgs.fetchFromGitHub {
       owner = "shagu";
       repo = "pfUI";
       rev = "145f725";
       sha256 = "sha256-0vtEDKz0351oFI0vTHUhC6l6jtgPT4zPAC/dEH2Q3rY=";
    };

    # Display better stats about character and what features it yields.
    home.file."${wowpath}/BetterCharacterStats/".source = pkgs.fetchFromGitHub {
       owner = "Lexiebean";
       repo = "BetterCharacterStats";
       rev = "b8ce1f0";
       sha256 = "sha256-/FRJFJODEwReL9vXG0EtsJj/nqtyOXn4+6Bll8ivpbk=";
    };

    # Show all loot available for dungeons and raids. Updated for Turtle wow.
    home.file."${wowpath}/AtlasLoot/".source = pkgs.fetchFromGitHub {
       owner = "Lexiebean";
       repo = "AtlasLoot";
       rev = "845bd54";
       sha256 = "sha256-vQ23xcZqm7DwkXLXHeQ9Rkk/JmlKw8ZPGcBafqTlD1g=";
    };

    # Handle removing poison, diseases, magic, and curses.
    home.file."${wowpath}/Decursive/".source = pkgs.fetchFromGitHub {
       owner = "Lexiebean";
       repo = "Decursive";
       rev = "f5c0050";
       sha256 = "sha256-2zP5A7FE+/OXXZ7P1YKWzpXohX7I64xWwOFfG7nY7Gw=";
    };

    # Adds extra QoL settings for raiding and handling needing/greeding on loot.
    home.file."${wowpath}/_LazyPig/".source = pkgs.fetchFromGitHub {
       owner = "Lexiebean";
       repo = "_LazyPig";
       rev = "88a0aaa";
       sha256 = "sha256-eDh9twpGKOIu8UoZs20hEROKjIsbzkz+ZYqen63UcE4=";
    };

    # UI for managing all totems.
    home.file."${wowpath}/ArchiTotem/".source = pkgs.fetchFromGitHub {
       owner = "Road-block";
       repo = "ArchiTotem";
       rev = "89bdd8d";
       sha256 = "sha256-xNQKrM2lo9KCfqpWYhjkaFFXmLIo+1ar1zttk/wFJZ0=";
    };

    # UI for EPGP looting points.
    home.file."${wowpath}/shootyepgp/".source = pkgs.fetchFromGitHub {
       owner = "Road-block";
       repo = "shootyepgp";
       rev = "39948dc";
       sha256 = "sha256-9ZOoDW7zeHpXiqCijhOrH7WcbG3bTKrLadFd2pq4Aj4=";
    };

    # Raid events warning emitter addon.
    home.file."${wowpath}/BigWigs/".source = pkgs.fetchFromGitHub {
       owner = "Lexiebean";
       repo = "BigWigs";
       rev = "ac60834";
       sha256 = "sha256-61zfE3TGYjy5VcRVvziOLZMgygRbJonpuCBV8ECX78E=";
    };

    # Raid events warning emitter addon for CThun boss.
    home.file."${wowpath}/CThunWarner/".source = pkgs.fetchFromGitHub {
       owner = "0ldi";
       repo = "CThunWarner";
       rev = "75fc117";
       sha256 = "sha256-wlqIQ4SxVoerdAHM4KlW93HV1BADwdvWaOauyHe7+l8=";
    } + "/CThunWarner";
}
