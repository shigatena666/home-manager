{ pkgs, lib, config, ... }:

{
  options.security = {
    enable = lib.mkEnableOption "enables security module";
  };

  config = lib.mkIf config.programming.enable {
    home.packages = with pkgs; [
      sops
      gnupg 
    ];
    
  };
}
