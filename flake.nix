{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  }@inputs:
  let
    inherit ( inputs.nixpkgs ) lib;
    # Creating a name for our own lib.
    #
    # Why is there { inherit lib; }; appended at the end (or vars)?
    # ──────────────────────────────────────────────────────────────────────────
    # I learnt that import takes in a path and evaluates it as a nix expression.
    # /lib/default.nix is essentially a function because it begins with
    # { lib ... }: which tells you it consumes a set as an argument.
    # we use { inherit lib; }; to pass that argument
    myvars = import ./vars { inherit lib; };
    mylib  = import ./lib  { inherit lib; };
  in
  {
    nixosConfigurations = {
      # The first configuration ever made.
      youkai-no-kenja = let
        name = "youkai-no-kenja";

        # Define our arguments to be passed into our output config.
        specialArgs = {
          inherit
            mylib
            myvars
            ;
        };
      in

      # What does this reference?
      # ─────────────────────────────────────────────────────────────
      # This I think basically means...
      # From the nixpkgs field there exists the function nixosSystem
      # it lives inside nixpkgs.lib and its purpose is to build the
      # actual environment of the system. The set of "{}" acts as the
      # argument of the function.
      nixpkgs.lib.nixosSystem 
      {
        # This will make all modules have all the things inside specialArgs.
        inherit specialArgs;

        modules = (map mylib.referenceFromRoot 
        [
          # Common


          # Configuration specific
          "hosts/${name}"

        ]) ++ [
          # What does this reference?
          # ─────────────────────────────────────────────────────────────
          # This works the same way as nixpkgs.lib.nixosSystem. It will
          # pull from the home-manager package and find the function
          # with that same name from the nixosModules lib.
          # Final: home-manager.nixosModules.home-manager is a function
          # and it takes a set as an arg.
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.extraSpecialArgs = inputs // specialArgs;
            home-manager.users.${myvars.username}.imports = map mylib.referenceFromRoot [
              "home/hosts/${name}"
            ];
          }
        ];
      };

      # furture framework configuration
      #aya-shameimaru = ...
    };
  };
}