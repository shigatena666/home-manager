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
    ];

    dconf.settings = {
      "org/gnome/shell" = {
        enabled-extensions = [
          "dash-to-dock@micxgx.gmail.com"
          "pop-shell@system76.com"
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


      # set pop-shell extension
      "org/gnome/shell/extensions/pop-shell" = {
        active-hint = true;
        active-hint-border-radius = 5;
        gap-inner = 3;
        gap-outer = 3;
        hint-color-rgba = "rgba(251, 184, 108, 100)";
        smart-gaps = true;
        snap-to-grid = true;
        tile-by-default = true;
        toggle-tiling = ["<Super>y"];
        activate-launcher = ["<Super>slash"];
        tile-enter = ["<Super>Return"];
        toggle-floating = ["<Super>g"];
        toggle-stacking-global = ["<Super>s"];
        focus-left = ["<Super>Left"];
        focus-down = ["<Super>Down"];
        focus-up = ["<Super>Up"];
        focus-right = ["<Super>Right"];
      };
    };
  };
}
