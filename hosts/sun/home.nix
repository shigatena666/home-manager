{ config, pkgs, ... }: {
  home.username = "Violette";
  home.homeDirectory = "/home/Violette";
  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}