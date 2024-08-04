{ config, pkgs, lib, ... }: {

    # activating modules.
    nixpkgs.config.allowUnfree = true;
    brew.enable = true;
    gaming.enable = false;
    generic-mac.enable = true;
    generic-windows.enable = false;
    messengers.enable = true;
    networking.enable = true;
    pentesting.enable = true;
    programming.enable = true;
    
    # activating touchid for privesc
    security.pam.enableSudoTouchIdAuth = true;

    # importing homebrew
    homebrew = {
        enable = true;
        onActivation.autoUpdate = true;
        onActivation.cleanup = "uninstall";
        brewPrefix = "/opt/homebrew/bin/";
    };
}