{ pkgs, lib, config, ... }:

{
  options.gaming = {
    enable = lib.mkEnableOption "enables gaming module";
  };

  config = lib.mkIf config.gaming.enable {
    home.packages = with pkgs; [
      steam
    ];
  };
}