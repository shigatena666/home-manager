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
  };

  outputs = { self, nixpkgs, home-manager, ... } @ inputs:
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
            ./nixosModules
          ];
        }; 
        "${linuxMachine.pcName}" = home-manager.lib.homeManagerConfiguration {
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