{ config, pkgs, lib, ... }: {

    # activating modules.
    nixpkgs.config.allowUnfree = true;
    gaming.enable = false;
    generic.enable = true;
    generic.system.mac = true;
    messengers.enable = true;
    networking.enable = true;
    pentesting.enable = true;
    programming.enable = true;

}