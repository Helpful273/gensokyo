{ lib, ... }:
{
  # ../. references the parent directory of the directory this 
  # file lives in.
  #
  # Example of usage:
  # ─────────────────────────────────────────────────────────────
  # map mylib.fromRoot []
  # It will reference everything from the root directory of this
  # project.
  fromRoot = lib.path.append ../.;

  # read up and reimplent github @ryan4yin's scanPath
  # should return form [ parentPath/onedeep/ parentPath/node.nix ]
  #
  # imports take in [] so...
  # imports = mylib.getChildren ./.
  #
  # @param  path
  # @return set of all nix files
  getChildren = 
    parentPath: 

      # consumes list, returns [ path ... ]
      builtins.map(node: (parentPath + "/${node}")) (

        # consumes attrset, returns list of "node"(s)
        builtins.attrNames (

          # return filtered attrset of { example_dir = "directory"; example_file = "regular"; }
          lib.attrsets.filterAttrs(
            pathName: # String
            _type:    # Any

            # predicate: (either or fulfilled)
            # ├── condition 1: is a directory
            # └── condition 2: is not "default.nix" and is a .nix file extension
            let
              condition1 = (_type == "directory");
              condition2 = (pathName != "default.nix") && (lib.strings.hasSuffix ".nix" pathName);
            in (condition1 || condition2)
            
          ) (builtins.readDir parentPath)
        )
      );
}