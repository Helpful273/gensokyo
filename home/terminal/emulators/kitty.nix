{
  lib,
  config,
  pkgs,
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

      font = {
        name = "Maple Mono NF CN";
        size = 10;
      };

      settings = let
        colour1 = "#FF91B0";
        colour2 = "#fb6b94";
        colour3 = "#e74a77";
        colour4 = "#da2c5d";
        textColour = "#ffaab9";
        textColour2 = "#ffffff";
      in {
        confirm_os_window_close = 0;

        background_opacity = 0.5;
        background_blur = 1;

        window_padding_width = 10;

        tab_bar_style = "powerline";
        tab_powerline_style = "slanted";

        active_tab_background = colour1;
        active_tab_foreground = textColour2;
        active_tab_font_style = "bold";

        inactive_tab_background = colour3;
        inactive_tab_foreground = textColour;

        shell = "fish";
      };
    };
  };
}