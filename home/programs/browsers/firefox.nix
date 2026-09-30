{
  lib,
  config,
  myvars,
  ...
}:
let
  cfg = config.modules.programs.browsers.firefox;
in
{
  options = {
    modules.programs.browsers.firefox = lib.mkEnableOption "Firefox browser";
  };

  config = lib.mkIf cfg.Enable {
    programs.firefox = {
      enable = true;
    };
  };
}