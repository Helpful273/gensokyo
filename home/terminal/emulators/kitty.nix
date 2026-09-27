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
    modules.terminal.emulators.kitty.enable = mkEnableOption "GPU accelerated terminal emulator";
  };

  config = lib.mkIf cfg.enable {
    programs.kitty = {
      enable = true;
    };
  };
}