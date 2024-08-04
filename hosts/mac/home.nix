{ config, pkgs, ... }: {
  home.username = "Violette";
  home.homeDirectory = "/Users/Violette";
  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

  # Add your configurations here
}