{
  myvars,
  ...
}:
{
  programs.git = {
    enable = true;

    settings = {
      user.name = myvars.username;
      user.email = myvars.useremail;

      init.defaultBranch = "main";
    };
  };
}