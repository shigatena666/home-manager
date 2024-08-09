{ pkgs, lib, config, ... }:

{
  options.theming = {
    enable = lib.mkEnableOption "enables theming module";
  };

  config = lib.mkIf config.theming.enable {
    home.packages = with pkgs; [
      gnome.gnome-shell-extensions
      gnome.gnome-control-center
      gnomeExtensions.dash-to-dock
      gnomeExtensions.gsnap
      gnomeExtensions.gsconnect
      gnomeExtensions.alphabetical-app-grid
      xdg-desktop-portal-gnome
    ];
  };
}
