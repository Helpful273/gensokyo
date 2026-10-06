{
  lib,
  config,
  pkgs,
  ...
}:
let
  cfg = config.modules.environment.niri;
in
{
  options = {
    modules.environment.niri.enable = lib.mkEnableOption "Scrolling/Tiling window manager";
  };

  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      xwayland-satellite
    ];

    wayland.windowManager.niri = let
      extraConfigs = lib.mkMerge [
        (import ./configs/keybindings.nix)
        (import ./configs/noctalia-shell.nix)
        (import ./configs/window-rules.nix)
      ];
    in {
      enable = true;

      settings = {
        spawn-at-startup = [
          "noctalia"
        ];

        input.keyboard.xkb = {
          layout = "us";
        };

        layout.gaps = 8;
        layout.shadow.draw-behind-window = true;
      } // extraConfigs;
    };
  };
}