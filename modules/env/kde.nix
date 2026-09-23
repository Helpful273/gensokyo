{
  config,
  lib,
  ...
}:
let
  cfg = config.baseKDE;
in
{
  options.baseKDE = {
    enable = lib.mkEnableOption "Enables base KDE Plasma desktop environment.";
  };

  config = lib.mkIf cfg.enable {
    services.xserver.enable = true;

    # Enable the KDE Plasma Desktop Environment.
    services.displayManager.sddm.enable = true;
    services.desktopManager.plasma6.enable = true;

    # Configure keymap in X11
    services.xserver.xkb = {
      layout = "us";
      variant = "";
    };
  };
}