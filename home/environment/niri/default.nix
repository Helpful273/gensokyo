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
      settings = lib.mkMerge [
        (import ./configs/keybindings.nix)
        (import ./configs/noctalia-shell.nix)
        (import ./configs/window-rules.nix)
        (import ./configs/layout.nix)
        (import ./configs/input.nix)
        (import ./configs/spawn-at-startup.nix)
      ];
    in {
      inherit settings;
      enable = true;
    };
  };
}