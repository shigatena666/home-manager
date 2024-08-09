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
      wl-clipboard
      wayshot
      swappy
      supergfxctl
    ];
    nixpkgs.overlays = [
    (final: prev:
    {
      ags = prev.ags.overrideAttrs (old: {
        buildInputs = old.buildInputs ++ [ pkgs.libdbusmenu-gtk3 ];
      });
    })
  ];
    stylix.image = /run/current-system/sw/share/backgrounds/gnome/blobs-l.svg;
    stylix.polarity = "dark";
  };
}
