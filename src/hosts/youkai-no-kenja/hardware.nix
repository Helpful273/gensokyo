let
  inherit (import ./) hostName;
in
{
  flake.nixosModules.${hostName+"-host"} = {
    config, 
    lib, 
    pkgs, 
    modulesPath, 
    ...
  }: {
    imports =
      [ (modulesPath + "/installer/scan/not-detected.nix")
      ];

    boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usbhid" "usb_storage" "sd_mod" ];
    boot.initrd.kernelModules = [ ];
    boot.kernelModules = [ "kvm-intel" ];
    boot.extraModulePackages = [ ];

    fileSystems."/" =
      { device = "/dev/mapper/luks-94fbb778-2b41-4e65-af7c-5aef32de0abe";
        fsType = "ext4";
      };

    # Should be safe to share UUID even if anyone knows it,
    # its not like they have access to my actualy hard drive.
    boot.initrd.luks.devices."luks-94fbb778-2b41-4e65-af7c-5aef32de0abe".device = "/dev/disk/by-uuid/94fbb778-2b41-4e65-af7c-5aef32de0abe";

    fileSystems."/boot" =
      { device = "/dev/disk/by-uuid/5656-CDC7";
        fsType = "vfat";
        options = [ "fmask=0077" "dmask=0077" ];
      };

    swapDevices =
      [ { device = "/dev/mapper/luks-195ef175-b3ea-4640-a801-ca800b16783c"; }
      ];

    nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
    hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  };
}