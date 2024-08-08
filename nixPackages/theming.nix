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
      supergfxctl
      tmux
    ];
    stylix.image = /run/current-system/sw/share/backgrounds/gnome/blobs-l.svg;
    stylix.polarity = "dark";

    nixpkgs.overlays = [
    (final: prev:
    {
      ags = prev.ags.overrideAttrs (old: {
        buildInputs = old.buildInputs ++ [ pkgs.libdbusmenu-gtk3 ];
      });
    })
  ];
  };
}
