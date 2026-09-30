{
  lib,
  config,
  myvars,
  ...
}:
let
  cfg = config.modules.programs.social.vesktop;
in
{
  options = {
    modules.programs.social.vesktop = lib.mkEnableOption "Discord communication";
  };

  config = lib.mkIf cfg.Enable {
    programs.vesktop = {
      enable = true;
    };
  };
}