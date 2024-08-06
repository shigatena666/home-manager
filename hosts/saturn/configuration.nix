{ config, pkgs, lib, ... }: {

    # activating modules.
    nixpkgs.config.allowUnfree = true;
    gaming.enable = false;
    generic-mac.enable = true;
    generic-linux.enable = false;
    messengers.enable = true;
    networking.enable = true;
    pentesting.enable = true;
    programming.enable = true;

}