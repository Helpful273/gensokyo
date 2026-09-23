{
  lib,
  pkgs,
  config,
  ...,
}:
let
  cfg = config.modules.desktop.niri;
in
{
  options.modules.desktop.niri = {
    enable = lib.mkEnableOption "Enable Niri";
  };

  config = lib.mkIf cfg.enable {

  };
}