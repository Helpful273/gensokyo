{
  lib,
  config,
  pkgs,
  ...
}:
let
  cfg = modules.editors.vscode;
in
{
  options = {
    editors.vscode.enable = lib.mkEnableOption "All in one code editor with huge extension marketplace";
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