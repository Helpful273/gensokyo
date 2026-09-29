{
  ...
}:
{
  programs.niri.enable = true;

  services.displayManager = {
    sddm = {
      enable = true;
    };

    defaultSession = "niri";
  };
}