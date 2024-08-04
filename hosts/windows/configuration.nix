{ pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;
    gaming.enable = true;
    generic-mac.enable = false;
    generic-windows.enable = true;
    networking.enable = true;
    pentesting.enable = true;
    programming.enable = true;
}