{self, inputs, ...}:
{
  flake.nixosConfigurations.youkai-no-kenja = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.youkaiNoKenjaHost
    ];
  };
}