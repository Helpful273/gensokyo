{
  pkgs,
  ...
}:
{
  # AUDIO

  environment.systemPackages = with pkgs; [
    pulseaudio,
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
    wireplumber.enable = true;
  };

  # Disable pulse audio to avoid confliction with pipewire
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;

  # BLUETOOTH

  hardware.bluetooth.enable = true;

  # MISC

  services = {
    printing.enable = true;
  };
}