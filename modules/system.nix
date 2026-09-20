{
  pkgs,
  myvars,
  ...
}:
{
  imports = [
    ./base
  ]

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # migrate to homemanager later
  programs.firefox.enable = true;
}