{self, ...}:
{
  flake.nixosModules.baseConfig = {...}: {
    users.users.helpful = {
      isNormalUser = true;
      description = "Helpful";
      extraGroups = [ 
        "networkmanager" 
        "wheel" 
      ];
    };
  };
}