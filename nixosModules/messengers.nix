{ pkgs, lib, config, ... }:

let
  gurk-rs = pkgs.callPackage ./gurk-rs.nix {};
in
{
  options.messengers = {
    enable = lib.mkEnableOption "enables messengers module";
  };

  config = lib.mkIf config.messengers.enable {
    home.packages = with pkgs; [
      vesktop
      slack
      gurk-rs
    ];
  };
}