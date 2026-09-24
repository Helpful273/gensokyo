{
  flake.nixosModules.baseConfig = {
    myvars, 
    lib, 
    ...
  }: {
    nixpkgs.config.allowUnfree = lib.mkForce true;

    # Configure nix settings.
    nix.settings = {
      # Enable flakes.
      experimental-features = [
        "nix-command"
        "flakes"
      ];

      # Privilege
      trusted-users = [ myvars.username ];

      # Auto store directory optimisation
      auto-optimise-store = true;
    };

    # Auto garbage collection.
    nix.gc = {
      automatic = lib.mkDefault true;
      dates = lib.mkDefault "weekly";
      options = lib.mkDefault "--delete-older-than-7d";
    };
  };
}