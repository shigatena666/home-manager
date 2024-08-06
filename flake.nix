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

  outputs = { self, nixpkgs, nix-darwin, home-manager, ... } @ inputs:
    let
      systems = {
        mac = "aarch64-darwin"; # for M1 mac
        linux = "x86_64-linux"; # for linux x86
      };
    in
    {
      darwinConfigurations = {
          "saturn" = nix-darwin.lib.darwinSystem {
            pkgs = import nixpkgs { system = systems.mac; };
            modules = [
              ./hosts/saturn/darwin-configuration.nix
              ./nixosModules/brew.nix
              home-manager.darwinModules.home-manager
              {
                home-manager.useGlobalPkgs = true;
                home-manager.useUserPackages = true;
                home-manager.users.Violette = import ./hosts/saturn/home.nix;
              }
            ];
        };
      };

      homeConfigurations = {
        "saturn" = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs { system = systems.mac; };
          modules = [
            ./hosts/saturn/home.nix
            ./hosts/saturn/configuration.nix
            ./nixosModules
          ];
        };
        "sun" = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs { system = systems.linux; };
          modules = [
            ./hosts/sun/home.nix
            ./hosts/sun/configuration.nix
            ./nixosModules
          ];
        };
      };
    };
}
