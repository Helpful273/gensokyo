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
  baseKDE.enable = true;
}