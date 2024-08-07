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
      ags
      bun
      dart-sass
      fd
      brightnessctl
      swww
      matugen
      fzf
      hyprpicker
      slurp
      wf-recorder
      wayshot
      swappy
      asusctl
      supergfxctl
    ];
    stylix.image = /run/current-system/sw/share/backgrounds/gnome/blobs-l.svg;
    stylix.polarity = "dark";
  };
}
