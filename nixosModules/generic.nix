{ pkgs, lib, config, ... }:

{
  options.generic = {
    enable = lib.mkEnableOption "enables generic module";
    system = {
      mac = lib.mkEnableOption "enables mac system configuration";
      linux = lib.mkEnableOption "enables linux system configuration";
      windows = lib.mkEnableOption "enables windows system configuration";
    };
  };

  config = lib.mkIf config.generic.enable {
    home.packages = with pkgs; let
      isLinux = config.generic.system.linux;
      isMac = config.generic.system.mac;
      isWindows = config.generic.system.mac;
    in
    lib.concatLists [
      lib.optionals isLinux [
        signal-desktop
        whatsapp-for-linux
        vesktop
        xdg-desktop-portal
        git
        vscode-with-extensions
        warp-terminal
        protonmail-desktop
        ani-cli
        neofetch
        openrgb-with-all-plugins
      ]
      lib.optionals isMac [
        arc-browser
        warp-terminal
        protonmail-desktop
        ani-cli
        iina
        raycast
        rectangle
        youtube-music
        hidden-bar
        alt-tab-macos
        unar
        neofetch
      ]
      lib.optionals isWindows [

      ]
    ];
  };
}