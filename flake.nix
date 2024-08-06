{
  description = "Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    impurity.url = "github:outfoxxed/impurity.nix";
    thorium.url = "github:end-4/nix-thorium";

    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      # inputs.nixpkgs.follows = "hyprland";
    };

    ags.url = "github:Aylur/ags";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    gross = {
      url = "github:fufexan/gross";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-parts.follows = "flake-parts";
    };
    matugen = {
      url = "github:/InioX/Matugen";
      # ref = "refs/tags/matugen-v0.10.0"
    };
    more-waita = {
      url = "github:somepaulo/MoreWaita";
      flake = false;
    };
    firefox-gnome-theme = {
      url = "github:rafaelmardojai/firefox-gnome-theme";
      flake = false;
    };
    anyrun = {
      url = "github:Kirottu/anyrun";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... } @ inputs:
    let
      systems = {
        mac = "aarch64-darwin"; 
        linux = "x86_64-linux";
      };

      macMachine = {
        pcName = "saturn";
        userName = "violette";
      };

      linuxMachine = {
        pcName = "sun";
        userName = "violette";
      };
    in
    {
      homeConfigurations = {
        "${macMachine.userName}@${macMachine.pcName}" = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs { system = systems.mac; };
          modules = [
            ./hosts/${macMachine.pcName}/home.nix
            ./hosts/${macMachine.pcName}/configuration.nix
            ./nixosModules
          ];
        };
        "${linuxMachine.userName}@${linuxMachine.pcName}" = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs { system = systems.linux; };
          modules = [
            ./hosts/${linuxMachine.pcName}/home.nix
            ./hosts/${linuxMachine.pcName}/configuration.nix
            ./nixosModules
          ];
        };
      };
    };
}
