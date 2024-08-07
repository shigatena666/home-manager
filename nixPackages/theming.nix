{ pkgs, lib, config, ... }:

{
  options.theming = {
    enable = lib.mkEnableOption "enables theming module";
  };

  config = lib.mkIf config.theming.enable {
    home.packages = with pkgs; [
      gnome.gnome-shell-extensions
      gnomeExtensions.dash-to-dock
      gnomeExtensions.gsnap
      gnomeExtensions.gsconnect
      gnomeExtensions.alphabetical-app-grid
      gnomeExtensions.aylurs-widgets
      ags
    ];

    dconf.settings = {
      "org/gnome/shell" = {
        enabled-extensions = [
          "dash-to-dock@micxgx.gmail.com"
          "gSnap@micahosborne"
          "gsconnect@andyholmes.github.io"
          "AlphabeticalAppGrid@stuarthayhurst"
          "system-monitor@gnome-shell-extensions.gcampax.github.com"
          "user-theme@gnome-shell-extensions.gcampax.github.com"
          "aylurs-widgets@aylur"
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
      };

      # set dash to dock.
      "org/gnome/shell/extensions/dash-to-dock" = {
        apply-custom-theme=false;
        background-opacity=0.55000000000000004;
        custom-theme-shrink=false;
        dance-urgent-applications=true;
        dash-max-icon-size=48;
        disable-overview-on-startup=true;
        dock-fixed=true;
        dock-position="BOTTOM";
        extend-height=false;
        height-fraction=0.90;
        hide-tooltip=false;
        intellihide=false;
        multi-monitor=false;
        preferred-monitor=-2;
        preferred-monitor-by-connector="DP-3";
        scroll-to-focused-application=true;
        show-apps-at-top=true;
        show-favorites=true;
        show-icons-emblems=true;
        show-mounts=false;
        show-trash=false;
        show-windows-preview=true;
        transparency-mode="DYNAMIC";
        workspace-agnostic-urgent-windows=true;
      };

      # configure gsnap. Grid seems bugged. Manually set it.
      "org/gnome/shell/extensions/gsnap" = {
        "grid-sizes" = ["3x2"];
        "show-icon" = true;
        "window-margin" = 7;
        "hold-ctrl-to-snap" = true;
        "grid-override" = [
          "(0,0,1,1)"
          "(1,0,1,1)"
          "(2,0,1,1)"
          "(0,1,1,1)"
          "(1,1,1,1)"
          "(2,1,1,1)"
        ];
      };
    };

      "org/gnome/shell/extensions/aylurs-widgets" = {
        "battery-bar-enabled" = true;
        "dashboard-enabled" = true;
        "date-menu-mod-enabled" = true;
        "media-player-enabled" = true;
        "power-menu-enabled" = true;
        "workspace-indicator-enabled" = true;
        "notification-indicator-enabled" = true;
        "modified-quick-settings-enabled" = true;
        "background-clock-enabled" = true;
      };

    # auto restore session on close
    # "org/gnome/shell/gnome-session" = {
    #  auto-save-session = true;
    #};

    # TODO: Waydroid
  };
}
