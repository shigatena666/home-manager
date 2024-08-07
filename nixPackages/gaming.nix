{ pkgs, lib, config, ... }:

{
  options.gaming = {
    enable = lib.mkEnableOption "enables gaming module";
  };

  config = lib.mkIf config.gaming.enable {
    home.packages = with pkgs; [
      protonup
      lutris
      heroic
      bottles
    ];
    home.sessionVariables = {
      STEAM_EXTRA_COMPAT_TOOLS_PATHS =
        "\\\${HOME}/.steam/root/compatibilitytools.d";
  };
  };
}