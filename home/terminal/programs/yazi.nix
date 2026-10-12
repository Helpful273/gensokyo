{
  lib,
  config,
  ...
}:
let
  cfg = config.modules.terminal.programs.yazi;
in
{
  options = {
    modules.terminal.programs.yazi.enable = lib.mkEnableOption "File manager";
  };

  config = lib.mkIf cfg.enable {
    programs.yazi = {
      enable = true;

      settings = {
        mgr = {
          show_hidden = true;
          sort_dir_first = true;
        };
      };
    };
  };
}