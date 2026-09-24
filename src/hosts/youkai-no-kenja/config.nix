{self, inputs, ...}:
let
  inherit (import ./) hostName;
in
{
  flake.nixosModules.${hostName+"-host"} = {...}: {
    imports = [
      self.nixosModules.baseConfig
      self.nixosModules.grubBootLoader
    ];

    boot.initrd.luks.devices."luks-195ef175-b3ea-4640-a801-ca800b16783c".device = "/dev/disk/by-uuid/195ef175-b3ea-4640-a801-ca800b16783c";

    networking.hostName = ${hostname};
    networking.networkmanager.enable = true;
  };
}