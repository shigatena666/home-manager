{ pkgs, lib, config, ... }:

{
  options.networking = {
    enable = lib.mkEnableOption "enables networking module";
  };

  config = lib.mkIf config.networking.enable {
    home.packages = with pkgs; [
      tailscale
    ];
  };
}