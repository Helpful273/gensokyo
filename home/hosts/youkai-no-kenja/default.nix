{ 
  config, 
  pkgs, 
  myvars,
  mylib,
  ... 
}:
{
  # defaults
  imports = (map mylib.fromRoot [
    "home/enable/gui.nix"
  ]);

  # modules
}