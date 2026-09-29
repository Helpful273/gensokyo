{
  mylib,
  ...
}:
{
  imports = (map mylib.fromRoot [
    # Common
    #"system/env/kde.nix"
    "system/profiles/desktop.nix"
  ]) ++ [
    # Host Specific
    #./nvidia-hardware.nix

    # Include auto-generated system scan file
    ./hardware-configuration.nix
  ];

  boot.initrd.luks.devices."luks-195ef175-b3ea-4640-a801-ca800b16783c".device = "/dev/disk/by-uuid/195ef175-b3ea-4640-a801-ca800b16783c";

  time.timeZone = "America/New_York";
  time.hardwareClockInLocalTime = true;
  
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