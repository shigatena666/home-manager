{ config, pkgs, ... }:

{
    gaming.enable = true;
    generic.enable = true;
    generic.system.linux = true;
    messengers.enable = true;
    networking.enable = true;
    pentesting.enable = false;
    programming.enable = true;
    security.enable = true;
    theming.enable = true;

    nixpkgs.config.allowUnfree = true;
    nixpkgs.config.firefox.enableGnomeExtensions = true;
}
