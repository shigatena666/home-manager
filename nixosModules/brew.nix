{ pkgs, lib, config, ... }:

let
  cfg = config.brew;
in
{
  options.brew = {
    enable = lib.mkEnableOption "enables brew module";
  };

  config = lib.mkIf cfg.enable {
    home.file.".Brewfile".text = ''
      tap "homebrew/cask"

      # brews
      # brew "ani-cli"

      # casks
      # cask arc
    '';

    home.activation.brewInstall = lib.hm.dag.entryAfter ["writeBoundary"] ''
      if command -v brew >/dev/null 2>&1; then
        echo "Updating Homebrew..."
        brew update
        echo "Installing Homebrew packages..."
        brew bundle --file=${config.home.homeDirectory}/.Brewfile
      else
        echo "Homebrew is not installed. Please install Homebrew first."
      fi
    '';
  };
}