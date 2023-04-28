{
  inputs = {
    # use nixpkgs-unstable as our package repository
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    # use home-manager for configuring our home-environments
    home-manager = {
      url = "github:nix-community/home-manager";

      # configure home-manager to follow our imported nixpkgs version rather than their own.
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nur.url = "github:nix-community/NUR";
  };

  outputs = { ... } @inputs:
    let
      pkgs = (import inputs.nixpkgs {
        # allow unfree packages, we're not Richard Stallman
        config.allowUnfree = true;

        # set pkgs system to x86 linux. Sadly home-manager
        # doesn't follow the flake standard of "baseoutput.${system}.username",
        # it would make it easier to use flake-utils or flake-parts properly.
        system = "x86_64-linux";

        # https://nixos.wiki/wiki/Overlays
        # Overlay is basically used as a way to patch the pkgs with whatever we put in the overlays list.
        overlays = [
          inputs.nur.overlay
        ];
      });

      makeHome = pkgs: modules:
        inputs.home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          extraSpecialArgs = {
            inherit inputs;
          };

          inherit modules;
        };

      makeHomeWithPackages = makeHome pkgs;
    in
    {
      # all home configurations stick under this output root
      homeConfigurations = {
        # create home configuration for user jonas
        jonas = makeHomeWithPackages [
          ./jonas
          ./jonas/desktop
          ./jonas/terminal
          ];
      };

      formatter."x86_64-linux" = pkgs.nixpkgs-fmt;
    };
}
