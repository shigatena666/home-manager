{ pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;
    gaming.enable = false;
    generic-mac.enable = true;
    generic-windows.enable = false;
    networking.enable = true;
    pentesting.enable = true;
    programming.enable = true;
}