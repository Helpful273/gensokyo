{self, inputs, myvars, ...}:
rec {
  hostName = "youkai-no-kenja";

  flake.nixosConfigurations.${hostName} = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.${hostname+"-host"}
    ];
  };
}