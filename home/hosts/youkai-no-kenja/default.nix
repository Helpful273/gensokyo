{ 
  config,
  mylib,
  ... 
}:
{
  # defaults
  imports = (map mylib.fromRoot [
    "home/enable/gui.nix"
  ]);

  # modules
  modules.desktop.baseKDE.enable = true;
}