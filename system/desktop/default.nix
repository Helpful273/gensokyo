{
  ...
}:
{
  programs.niri.enable = true;

  services.xserver.enable = true;

  services.displayManager = {
    sddm = {
      enable = true;
    };

    defaultSession = "niri";
  };
}