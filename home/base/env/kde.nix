{
  config,
  lib,
  ...
}:
let
  cfg = config.modules.kdePlasmaEnv;
in
{
  options.modules.kdePlasmaEnv = {
    enable = lib.mkEnableOption "kde plasma";
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