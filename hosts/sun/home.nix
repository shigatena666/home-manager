{ config, pkgs, ... }: {
  home.username = "violette";
  home.homeDirectory = "/home/violette";
  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
