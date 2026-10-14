{
  lib,
  config,
  ...
}:
let
  cfg = config.modules.terminal.shell.fish;
in
{
  options = {
    modules.terminal.shell.fish.enable = lib.mkEnableOption "Fish Shell";
  };

  config = lib.mkIf cfg.enable {
    programs.fish = {
      enable = true;

      interactiveShellInit = ''
        set fish_greeting ""

        fastfetch
      '';
    };
  };
}