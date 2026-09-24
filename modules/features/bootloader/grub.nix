{ self, inputs, ... }:
{
  flake.nixosModules.grubBootLoader = { ... }: {
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
  }
}