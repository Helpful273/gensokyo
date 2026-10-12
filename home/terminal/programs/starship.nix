{
  lib,
  config,
  ...
}:
let
  cfg = config.modules.terminal.programs.starship;
in
{
  options = {
    modules.terminal.programs.starship.enable = lib.mkEnableOption "File manager";
  };

  config = lib.mkIf cfg.enable {
    programs.starship = {
      enable = true;

      settings = {

      };
    };
  };
}