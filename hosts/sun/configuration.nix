{ pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;
    gaming.enable = true;
    generic-mac.enable = false;
    generic-linux.enable = true;
    messengers.enable = true;
    networking.enable = true;
    pentesting.enable = false;
    programming.enable = false;
}