# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "com/usebottles/bottles" = {
      startup-view = "page_list";
      window-height = 634;
      window-width = 1670;
    };

    "org/gnome/Console" = {
      last-window-maximised = false;
      last-window-size = mkTuple [ 1670 1282 ];
    };

    "org/gnome/Extensions" = {
      window-height = 1232;
      window-width = 1670;
    };

    "org/gnome/control-center" = {
      last-panel = "background";
      window-state = mkTuple [ 1670 634 false ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "Pardus" ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.FileRoller.desktop" "org.gnome.seahorse.Application.desktop" "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.fonts.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" "org.gnome.Loupe.desktop" "org.gnome.Evince.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/blobs-l.svg";
      picture-uri-dark = "file:///run/current-system/sw/share/backgrounds/gnome/blobs-d.svg";
      primary-color = "#241f31";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "fr+azerty" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-gnome-console" "org-gnome-fileroller" "code-url-handler" "com-usebottles-bottles" ];
    };

    "org/gnome/desktop/notifications/application/code-url-handler" = {
      application-id = "code-url-handler.desktop";
    };

    "org/gnome/desktop/notifications/application/com-usebottles-bottles" = {
      application-id = "com.usebottles.bottles.desktop";
    };

    "org/gnome/desktop/notifications/application/dev-warp-warp" = {
      application-id = "dev.warp.Warp.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-fileroller" = {
      application-id = "org.gnome.FileRoller.desktop";
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/blobs-l.svg";
      primary-color = "#241f31";
      secondary-color = "#000000";
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = false;
      window-size = mkTuple [ 1024 768 ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/file-roller/dialogs/extract" = {
      height = 800;
      recreate-folders = true;
      skip-newer = false;
      width = 1000;
    };

    "org/gnome/file-roller/file-selector" = {
      show-hidden = false;
      sidebar-size = 300;
      window-size = mkTuple [ (-1) (-1) ];
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 1120;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 1237;
      window-width = 1670;
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 1722 1232 ];
      maximized = false;
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = false;
    };

    "org/gnome/shell" = {
      disabled-extensions = [ "widgets@aylur" "light-style@gnome-shell-extensions.gcampax.github.com" "window-list@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "dash-to-dock@micxgx.gmail.com" "gSnap@micahosborne" "gsconnect@andyholmes.github.io" "AlphabeticalAppGrid@stuarthayhurst" "system-monitor@gnome-shell-extensions.gcampax.github.com" "user-theme@gnome-shell-extensions.gcampax.github.com" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "dev.warp.Warp.desktop" "firefox.desktop" "vesktop.desktop" "signal-desktop.desktop" "slack.desktop" "youtube-music.desktop" "code.desktop" ];
      last-selected-power-profile = "performance";
      welcome-dialog-last-shown-version = "46.2";
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      always-center-icons = false;
      apply-custom-theme = false;
      apply-glossy-effect = false;
      background-opacity = 0.55;
      custom-background-color = false;
      custom-theme-customize-running-dots = false;
      custom-theme-shrink = false;
      dance-urgent-applications = true;
      dash-max-icon-size = 48;
      disable-overview-on-startup = true;
      dock-fixed = true;
      dock-position = "BOTTOM";
      extend-height = false;
      height-fraction = 0.9;
      hide-tooltip = false;
      icon-size-fixed = false;
      intellihide = false;
      max-alpha = 0.8;
      multi-monitor = false;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "DP-3";
      running-indicator-dominant-color = true;
      running-indicator-style = "DOTS";
      scroll-to-focused-application = true;
      show-apps-at-top = true;
      show-favorites = true;
      show-icons-emblems = true;
      show-mounts = false;
      show-trash = false;
      show-windows-preview = true;
      transparency-mode = "DYNAMIC";
      unity-backlit-items = false;
      workspace-agnostic-urgent-windows = true;
    };

    "org/gnome/shell/extensions/gsconnect" = {
      id = "190c6dac-4971-439d-b134-7139d522392d";
      name = "nixos";
    };

    "org/gnome/shell/extensions/gsnap" = {
      grid-override = [ "(0,0,1,1)" "(1,0,1,1)" "(2,0,1,1)" "(0,1,1,1)" "(1,1,1,1)" "(2,1,1,1)" ];
      grid-sizes = [ "3x2" ];
      hold-ctrl-to-snap = true;
      show-icon = true;
      window-margin = 7;
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "Gnome-topbar-le-dots-main";
    };

    "org/gnome/shell/world-clocks" = {
      locations = [];
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 921 372 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 197;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 26 23 ];
      window-size = mkTuple [ 1231 902 ];
    };

  };
}
