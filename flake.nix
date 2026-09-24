{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    # RESTRUCTURING for dendritic pattern

    # Forces a consistent, strict file structure.
    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:vic/import-tree";

    wrapper-modules.url = "github:BirdeeHub/nix-wrapple-modules";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs: let
    inherit ( inputs.nixpkgs ) lib;

    args = {
      inherit inputs;

      myvars = import ./vars { inherit lib; };
      mylib = import ./lib { inherit lib; };
    };
  in
  inputs.flake-parts.lib.mkFlake 
    { inherit args; }
    ( inputs.import-tree ./src );
}