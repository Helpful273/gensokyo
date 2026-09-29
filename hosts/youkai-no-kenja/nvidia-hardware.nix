{
  ...
}:
{
  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    modesetting.enable = true;
  };
  
  hardware.graphics =  {
    enable = true;
  };
}