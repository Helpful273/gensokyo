{
  mylib,
  ... 
}:
{
  # defaults
  imports = (map mylib.fromRoot [
    "home/enable/gui.nix"
  ]);

  # modules
  modules.desktop.niri.enable = true;
}