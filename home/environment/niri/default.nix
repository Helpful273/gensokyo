{
  lib,
  config,
  ...
}:
let
  cfg = config.modules.environment.niri;
in
{
  options = {
    modules.environment.niri.enable = lib.mkEnableOption "Scrolling/Tiling window manager";
  };

  config = lib.mkIf cfg.enable {
    programs.niri = {
      enable = true;

      settings = {
        spawn-at-startup = [
          ["noctalia"]
        ]
      };
    };
  };
}