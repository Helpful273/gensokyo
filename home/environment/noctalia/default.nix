{
  lib,
  config,
  ...
}:
let
  cfg = config.modules.environment.noctalia;
in
{
  options = {
    modules.environment.noctalia.enable = lib.mkEnableOption "Bar and widgets package";
  };

  config = lib.mkIf cfg.enable {
    programs.noctalia = {
      enable = true;
    };
  };
}