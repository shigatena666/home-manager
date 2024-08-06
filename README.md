# Home Manager Configuration

This repository contains my own Home Manager configuration files and related NixOS modules.
It is heavily inspired by the advices of Vimjoyer on this video : https://github.com/vimjoyer/modularize-video.

# Compiling Nix flakes

- home-manager switch --flake .#saturn
- home-manager switch --flake .#sun

## Repository Structure

```plaintext
.
├── README.md
├── flake.lock
├── flake.nix
├── hosts
│   ├── saturn
│   │   ├── configuration.nix
│   │   ├── hardware-configuration.nix
│   │   └── home.nix
│   ├── sun
│   │   ├── configuration.nix
│   │   ├── hardware-configuration.nix
│   │   └── home.nix
└── nixosModules
    ├── default.nix
    ├── gaming.nix
    ├── generic-mac.nix
    ├── generic-linux.nix
    ├── messengers.nix
    ├── networking.nix
    ├── pentesting.nix
    └── programming.nix
```

## Description

- **flake.lock**: Defines the locked dependencies using Nix flakes.
- **flake.nix**: Entry point for the Nix flakes configuration.
- **hosts/**: Contains configurations for different host machines.
    - **saturn/**: Configuration files for the `saturn` machine.
        - **configuration.nix**: System configuration for `saturn`.
        - **hardware-configuration.nix**: Hardware-specific configuration for `saturn`.
        - **home.nix**: Home Manager specific configuration for the `saturn` user.
    - **sun/**: Configuration files for the `sun` machine.
        - **configuration.nix**: System configuration for `sun`.
        - **hardware-configuration.nix**: Hardware-specific configuration for `sun`.
        - **home.nix**: Home Manager specific configuration for the `sun` user.
- **nixosModules/**: Custom NixOS modules for various purposes.
    - **default.nix**: Default NixOS module.
    - **gaming.nix**: NixOS module for gaming.
    - **generic-mac.nix**: Generic NixOS module for Mac.
    - **generic-linux.nix**: Generic NixOS module for linux.
    - **messengers.nix**: NixOS module for messenger applications.
    - **networking.nix**: NixOS module for networking.
    - **pentesting.nix**: NixOS module for pentesting.
    - **programming.nix**: NixOS module for programming.