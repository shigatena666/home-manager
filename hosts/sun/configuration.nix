{ pkgs, ... }: {
    nixpkgs.config.allowUnfree = true;
    gaming.enable = true;
    generic.enable = true;
    generic.system.linux = true;
    messengers.enable = true;
    networking.enable = true;
    pentesting.enable = false;
    programming.enable = true;
    theming.enable = true;
}