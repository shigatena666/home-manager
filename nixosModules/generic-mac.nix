{ pkgs, lib, config, ... }:

{
  options.generic-mac = {
    enable = lib.mkEnableOption "enables generic-mac module";
  };

  config = lib.mkIf config.generic-mac.enable {
    home.packages = with pkgs; [
      arc-browser
      warp-terminal
      protonmail-desktop
      ani-cli
      iina
      raycast
      rectangle
      youtube-music
      hidden-bar
      alt-tab-macos
      unar
      neofetch
    ];
  };
}