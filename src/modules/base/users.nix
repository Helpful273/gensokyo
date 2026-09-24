{
  flake.nixosModules.baseConfig = {myvars, ...}: {
    users.users.${myvars.username} = {
      isNormalUser = true;
      description = myvars.username;
      extraGroups = [ 
        "networkmanager" 
        "wheel" 
      ];
    };
  }
}