{
  lib,
  mylib,
  pkgs,
  ...
}:
{
  imports = (map mylib.relativeToRoot [
    # Common
    "modules/env/kde.nix"
    "modules/desktop.nix"
  ]) ++ [
    # Include auto-generated system scan file
    ./hardware-configuration.nix
  ];

  # Bootloader
  boot.loader = {
    # common
    efi.canTouchEfiVariables = true;
    systemd-boot.enable = false;

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

  # Dual-Booting time fix
  time.hardwareClockInLocalTime = true;

  # Network
  networking.hostName = "youkai-no-kenja";
  networking.networkmanager.enable = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "26.05";
}