{
  lib,
  config,
  pkgs,
  ...
}:
let
  cfg = config.modules.editors.vscode;
in
{
  options = {
    modules.editors.vscode.enable = lib.mkEnableOption "All in one code editor with huge extension marketplace";
  };

  config = lib.mkIf cfg.enable {
    programs.vscode = {
      enable = true;

      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
      ];
    };
  };
}