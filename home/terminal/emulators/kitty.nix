{
  lib,
  config,
  ...
}:
let
  cfg = config.modules.terminal.emulators.kitty;
in
{
  options = {
    modules.terminal.emulators.kitty.enable = lib.mkEnableOption "GPU accelerated terminal emulator";
  };

  config = lib.mkIf cfg.enable {
    programs.kitty = {
      enable = true;

      settings = {
        confirm_os_window_close = 0;

        background_opacity = 0.5;
        background_blur = 1;
      };
    };
  };
}