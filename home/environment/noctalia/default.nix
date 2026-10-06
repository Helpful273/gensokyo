{
  lib,
  config,
  inputs,
  ...
}:
let
  cfg = config.modules.environment.noctalia;
in
{
  imports = [ inputs.noctalia.homeModules.default ];

  options = {
    modules.environment.noctalia.enable = lib.mkEnableOption "Bar and widgets package";
  };

  config = lib.mkIf cfg.enable {
    programs.noctalia = {
      enable = true;
      systemd.enable = true;

      
    };
  };
}