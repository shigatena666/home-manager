# Home Manager Configuration

This repository contains my own Home Manager configuration files and related NixOS modules.
It is heavily inspired by the advices of Vimjoyer on this video : https://github.com/vimjoyer/modularize-video.

# Compiling Home

- home-manager switch --flake .#saturn
- home-manager switch --flake .#sun

# Compiling Nix

- sudo nixos-rebuild switch

# SOPS

- sops --encrypt --in-place .secrets/secrets.yaml

# dconf2nix

dconf dump / | dconf2nix > dconf.nix
