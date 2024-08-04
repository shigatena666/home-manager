{ pkgs, lib, config, ... }:

{
  options.programming = {
    enable = lib.mkEnableOption "enables programming module";
  };

  config = lib.mkIf config.programming.enable {
    home.packages = with pkgs; [
      vscode
      git
      docker
    ];
  };
}