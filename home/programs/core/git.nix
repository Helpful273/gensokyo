{
  lib,
  config,
  myvars,
  ...
}:
let
  cfg = modules.programs.core.git;
in
{
  options = {
    programs.core.git.enable = "Versioning tool";
  };

  config = lib.mkIf cfg.enable {
    programs.git = {
      enable = true;

      settings = {
        user.name = myvars.username;
        user.email = myvars.useremail;

        init.defaultBranch = "main";
      };
    };
  };
}