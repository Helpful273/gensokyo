{
  lib,
  config,
  myvars,
  ...
}:
let
  cfg = config.modules.programs.core.git;
in
{
  options = {
    modules.programs.core.git.enable = lib.mkEnableOption "Versioning tool";
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