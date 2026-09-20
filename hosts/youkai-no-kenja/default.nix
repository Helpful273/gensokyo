{
  lib,
  pkgs,
  ...
}@args:
let
  
in
{
  imports = [
    # Common
    ./modules/kde.nix
    ./modules/system.nix

    # Include auto-generated system scan file
    ./hardware-configuration.nix
  ];

  # Bootloader
  boot.loader = {
    # common
    efi.canTouchEfiVariables = true;
    systemd.boot.enable = false;

    # Enable grub loader
    grub = {
      enable = true;
      useOSProber = true;
      efiSupport = true;
      device = "nodev";
    };
  };

  # Luks encryption
  boot.initrd.luks.devices."luks-195ef175-b3ea-4640-a801-ca800b16783c".device = "/dev/disk/by-uuid/195ef175-b3ea-4640-a801-ca800b16783c";

  # Set your time zone.
  time.timeZone = "America/New_York";

  # make windows time work properly
  time.hardwareClockInLocalTime = true;

  # Define network hostname.
  networking.hostName = "youkai-no-kenja";
  networking.networkmanager.enable = true;
}