{ pkgs, lib, config, ... }:

{
  options.generic-windows = {
    enable = lib.mkEnableOption "enables generic-windows module";
  };

  config = lib.mkIf config.generic-windows.enable {
    home.packages = with pkgs; [

    ];
  };
}