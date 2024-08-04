{ config, pkgs, lib, ... }: {
    
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