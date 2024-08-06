{ pkgs, lib, config, ... }:

{
  options.generic-linux = {
    enable = lib.mkEnableOption "enables generic-linux module";
  };

  config = lib.mkIf config.generic-linux.enable {
    home.packages = with pkgs; [

    ];
  };
}