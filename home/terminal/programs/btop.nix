{
  lib,
  config,
  ...
}:
let
  cfg = modules.terminal.programs.btop;
in
{
  options = {
    terminal.programs.btop.enable = lib.mkEnableOption "System monitoring";
  };

  config = lib.mkIf cfg.enable = {
    programs.btop = {
      enable = true;

      settings = {
        theme_background = false;
      };
    };
  };
}