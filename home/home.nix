{
  mylib,
  myvars,
  ...
}:
{
  imports = [
    ./editors
    ./environment
    ./programs
    ./terminal
  ];

  home = {
    inherit (myvars) username;
    homeDirectory = "/home/${myvars.username}";

    # Do not change.
    stateVersion = "26.05";
  };
}