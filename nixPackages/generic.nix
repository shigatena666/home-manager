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
    home.packages = with pkgs;
      [
        warp-terminal
        protonmail-desktop
        ani-cli
        neofetch
        youtube-music
        vesktop
      ]
      ++ lib.optionals config.generic.system.linux [
        # TODO: Waydroid
        waydroid
        dconf2nix
        pavucontrol
      ]
      ++ lib.optionals config.generic.system.mac [
        arc-browser
        iina
        raycast
        rectangle
        hidden-bar
        alt-tab-macos
        unar
      ];

      programs.firefox = {
        enable = true;
        profiles.default = {
          id = 0;
          name = "Default";
          settings = {
            "browser.startup.page" = 3;
            "browser.sessionstore.resume_from_crash" = true;
            "browser.sessionstore.max_resumed_crashes" = -1;
          };
        };
      };
  };
}