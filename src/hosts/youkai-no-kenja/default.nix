{self, inputs, ...}:
{
  flake.nixosConfigurations.youkaiNoKenja = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.youkaiNoKenjaHost
    ];
  };
}