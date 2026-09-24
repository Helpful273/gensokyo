let
  inherit (import ./) hostName;
in
{
  flake.nixosModules.${hostName+"-host"} = {
    config, 
    lib, 
    pkgs, 
    modulesPath, 
    ...
  }: {
    
  };
}