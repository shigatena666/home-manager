{ pkgs, lib, config, ... }:

{
  options.theming = {
    enable = lib.mkEnableOption "enables theming module";
  };

  config = lib.mkIf config.theming.enable {
    home.packages = with pkgs; [
      gnome.gnome-shell-extensions
      gnomeExtensions.dash-to-dock
      gnomeExtensions.pop-shell
      gnomeExtensions.gsnap
      gnomeExtensions.user-themes
    ];

    dconf.settings = {
      "org/gnome/shell" = {
        enabled-extensions = [
          "dash-to-dock@micxgx.gmail.com"
          "gSnap@micahosborne"
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

      "org/gnome/shell/extensions/gsnap" = {
        "grid-sizes" = ["3x2"];
        "show-icon" = true;
        "window-margin" = 7;
        "hold-ctrl-to-snap" = true;
        "grid-override" = [
          "(0,0,1,1)"  # First column, first row
          "(1,0,1,1)"  # Second column, first row
          "(2,0,1,1)"  # Third column, first row
          "(0,1,1,1)"  # First column, second row
          "(1,1,1,1)"  # Second column, second row
          "(2,1,1,1)"  # Third column, second row
        ];
      };
    };
    # TODO: Waydroid
  };
}
