{ pkgs, ... }: {
    security.pam.enableSudoTouchIdAuth = true;
    nixpkgs.config.allowUnfree = true;
    gaming.enable = false;
    generic-mac.enable = true;
    generic-windows.enable = false;
    messengers.enable = true;
    networking.enable = true;
    pentesting.enable = true;
    programming.enable = true;
}