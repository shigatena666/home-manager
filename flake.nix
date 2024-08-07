{
  description = "Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix.url = "github:danth/stylix";
  };

  outputs = { self, nixpkgs, home-manager, stylix, ... } @ inputs:
    let
      systems = {
        mac = "aarch64-darwin"; 
        linux = "x86_64-linux";
        windows = "x86_64-windows";
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
        "${macMachine.pcName}" = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs { system = systems.mac; };
          modules = [
            ./hosts/${macMachine.pcName}/home.nix
            ./hosts/${macMachine.pcName}/configuration.nix
            ./nixPackages
          ];
        }; 
        "${linuxMachine.pcName}" = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs { system = systems.linux; };
          modules = [
            ./hosts/${linuxMachine.pcName}/home.nix
            ./hosts/${linuxMachine.pcName}/configuration.nix
            ./nixPackages
            stylix.homeManagerModules.stylix
          ];
        };
      };
    };
}