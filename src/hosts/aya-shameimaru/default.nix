{self, inputs, myvars, ...}:
rec {
  hostName = "aya-shameimaru";

  flake.nixosConfigurations.${hostName} = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.${hostname+"-host"}
    ];
  };
}