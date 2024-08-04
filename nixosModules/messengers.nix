{ pkgs, lib, config, ... }:

{
  options.messengers = {
    enable = lib.mkEnableOption "enables messengers module";
  };

  config = lib.mkIf config.messengers.enable {
    home.packages = with pkgs; [
      vesktop
      slack
      nchat
      # beeper
    ];
  };
}