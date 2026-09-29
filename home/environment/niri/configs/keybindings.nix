{
  binds = {
    # Movement
    "Mod+Up".focus-window-up = {};
    "Mod+Down".focus-window-down = {};
    "Mod+Left".focus-column-left = {};
    "Mod+Right".focus-column-right = {};

    "Mod+Return".spawn-sh = lib.getExe pkgs.kitty;
    "Mod+Q".close-window = {};
  };
}