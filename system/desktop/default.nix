{
  ...
}:
{
  programs.niri.enable = true;

  services.xserver.enable = true;

  services.displayManager = {
    sddm = {
      enable = true;
      wayland.enable = true;
    };

    defaultSession = "niri";
  };
}