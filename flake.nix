{
  description = "Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... } @ inputs:
    let
      systems = {
        mac = "aarch64-darwin"; # For M1 Macs
        windows = "x86_64-windows"; # For Windows x86
      };
    in
    {
      homeConfigurations = {
        "mac" = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs { system = systems.mac; };
          modules = [
            ./hosts/saturn/home.nix
            ./hosts/saturn/configuration.nix
            ./nixosModules
          ];
        };
        "windows" = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs { system = systems.windows; };
          modules = [
            ./hosts/sun/home.nix
            ./hosts/sun/configuration.nix
            ./nixosModules
          ];
        };
      };
    };
}