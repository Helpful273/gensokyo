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
    modules.programs.browsers.firefox.enable = lib.mkEnableOption "Firefox browser";
  };

  config = lib.mkIf cfg.enable {
    programs.firefox = {
      enable = true;
    };
  };
}