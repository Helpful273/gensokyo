{
  boot.loader = {
    # common
    efi.canTouchEfiVariables = true;
    efi.efiSysMountPoint = "/boot/efi";
    systemd-boot.enable = false;

    # Enable grub loader
    grub = {
      enable = true;
      useOSProber = true;
      efiSupport = true;
      device = "nodev";
    };
  };
}