{self, inputs, ...}:
{
  flake.nixosModules.ayaShameimaruHost = {...}: {
    imports = [
      self.nixosModules.baseConfig
    ];

    system.stateVersion = "26.05";
  };
}