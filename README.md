# Home Manager Configuration

This repository contains my own Home Manager configuration files and related NixOS modules.
It is heavily inspired by the advices of Vimjoyer on this video : https://github.com/vimjoyer/modularize-video.

# Setting up NixOS

sudo ln -sf ~/nixos/sun/configuration.nix /etc/nixos/configuration.nix

# Compiling Nix flakes

- home-manager switch --flake .#saturn
- home-manager switch --flake .#sun
