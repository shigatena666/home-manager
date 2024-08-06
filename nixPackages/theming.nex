{ pkgs, lib, config, ... }:

{
  options.theming = {
    enable = lib.mkEnableOption "enables theming module";
  };

  config = lib.mkIf config.theming.enable {
    home.packages = with pkgs; [
        gnome.gnome-shell-extensions
        gnomeExtensions.dash-to-dock
    ];
  };
}