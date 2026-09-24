{self, ...}: {
  flake.nixosModules.desktopConfig = {}: {
    imports = [
      self.baseConfig
    ];
  };
}