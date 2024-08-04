{ pkgs, lib, config, ... }:

{
  options.brew = {
    enable = lib.mkEnableOption "enables brew module";
  };

  config = lib.mkIf config.brew.enable {
    homebrew = {
      taps = [
        "homebrew/cask"
      ];

      brews = [

      ];

      casks = [

      ];
    };
  };
}