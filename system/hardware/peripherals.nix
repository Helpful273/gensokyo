{
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    pulseaudio
    easyeffects
  ];

  # Pipewire configuration
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # Use the WirePlumber session manager
    #wireplumber.enable = true;
  };

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;

  hardware.bluetooth.enable = true;

  services = {
    printing.enable = true;
  };
}