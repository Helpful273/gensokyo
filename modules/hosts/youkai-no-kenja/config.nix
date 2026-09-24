{self, inputs, ...}:
{
  flake.nixosModules.youkaiNoKenjaHost = {...}: {
    imports = [
      self.nixosModules.desktopConfig
      self.nixosModules.grubBootLoader
    ];

    boot.initrd.luks.devices."luks-195ef175-b3ea-4640-a801-ca800b16783c".device = "/dev/disk/by-uuid/195ef175-b3ea-4640-a801-ca800b16783c";

    time.timeZone = "America/New_York";
    time.hardwareClockInLocalTime = true;

    networking.hostName = "youkai-no-kenja";
    networking.networkmanager.enable = true;
  };
}