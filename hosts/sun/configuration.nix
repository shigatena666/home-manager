{ pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;
    gaming.enable = true;
    generic-mac.enable = false;
    generic-windows.enable = true;
    messengers.enable = true;
    networking.enable = true;
    pentesting.enable = false;
    programming.enable = false;
}