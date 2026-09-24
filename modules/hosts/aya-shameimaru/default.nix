{self, inputs, ...}:
{
  flake.nixosConfigurations.ayaShameimaru = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.ayaShameimaruHost
    ];
  };
}