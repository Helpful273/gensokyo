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

      keybindings = {
        "ctrl+shift+m" = "toggle_maximized";
      };

      settings = {
        confirm_os_window_close = 0;

        background_blur = 1;
      };
    };
  };
}