{ config, pkgs, ... }: {
  home.username = "Violette";
  home.homeDirectory = "/home/violette";
  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
