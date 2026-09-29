{
  ...
}:
{
  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    modesettings.enable = true;
  };
  
  hardware.graphics =  {
    enable = true;
  };
}