{
  lib,
  config,
  ...
}:
let
  cfg = modules.terminal.emulators.kitty;
in
{
  options = {
    terminal.emulators.kitty.enable = mkEnableOption "GPU accelerated terminal emulator";
  };

  config = lib.mkIf cfg.enable {
    programs.kitty = {
      enable = true;
    };
  };
}