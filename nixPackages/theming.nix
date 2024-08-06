{ pkgs, lib, config, ... }:

{
  options.theming = {
    enable = lib.mkEnableOption "enables theming module";
  };

  config = lib.mkIf config.theming.enable {
    home.packages = with pkgs; [
      gnome.gnome-shell-extensions
      gnomeExtensions.dash-to-dock
      gnomeExtensions.tiling-shell
    ];

    dconf.settings = {
      "org/gnome/shell" = {
        enabled-extensions = [
          "dash-to-dock@micxgx.gmail.com"
          "tiling-shell@leleat-on-github"
        ];
        favorite-apps = [
          "nautilus.desktop"
          "dev.warp.Warp.desktop"
          "firefox.desktop"
          "vesktop.desktop"
          "signal-desktop.desktop"
          "slack.desktop"
          "youtube-music.desktop"
          "code.desktop"
        ];
        always-show-log-out = true;
      };

      # set dash to dock.
      "org/gnome/shell/extensions/dash-to-dock" = {
        dock-position = "BOTTOM";
        extend-height = false;
        dock-fixed = true;
        intellihide = false;
        multi-monitor = false;
        height-fraction = 0.90;
        dash-max-icon-size = 48;
        custom-theme-shrink = false;
        apply-custom-theme = false; 
        show-mounts = false; 
        show-trash = false;
        transparency-mode = "DYNAMIC";
        background-opacity = 0.55;
        show-apps-at-top = true;
      };


      # set tiling-shell
      "org/gnome/shell/extensions/tiling-shell" = {
        tiling-mode = "quarter";
        enable-tiling-popup = true;
      };
    };
  };
}
