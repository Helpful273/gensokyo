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
    modules.programs.social.vesktop.enable = lib.mkEnableOption "Discord communication";
  };

  config = lib.mkIf cfg.enable {
    programs.vesktop = {
      enable = true;
    };
  };
}