{self, ...}: {
  flake.nixosModules.desktopConfig = {...}: {
    imports = [
      self.nixosModules.baseConfig
    ];
  };
}