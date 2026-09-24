{self, inputs, ...}:
let
  inherit (import ./) hostName;
in
{
  flake.nixosModules.${hostName+"-host"} = {...}: {
    imports = [
      self.nixosModules.baseConfig
    ];

    system.stateVersion = "26.05";
  };
}