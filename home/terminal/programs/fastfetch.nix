{
  lib,
  config,
  pkgs,
  ...
}:
let
  cfg = config.modules.terminal.programs.fastfetch;
in
{
  options = {
    modules.terminal.programs.fastfetch.enable = lib.mkEnableOption "Device Specifications";
  };

  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      imagemagick
    ]

    programs.fastfetch = {
      enable = true;


    };
  };
}