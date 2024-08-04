{ pkgs, ... }:

{
  # List packages installed in system profile
  environment.systemPackages = with pkgs; [
    vim
    git
  ];

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;

  # Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh.enable = true;

  # Set Git commit hash for darwin-version.
  system.configurationRevision = self.rev or self.dirtyRev or null;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Homebrew
  homebrew = {
    enable = true;
    onActivation.autoUpdate = true;
    onActivation.cleanup = "uninstall";
    brews = [ "mas" ];
    casks = [ "firefox" ];
  };
}