{
  mylib,
  ...
}:
{
  imports = (map mylib.fromRoot [
    "modules/core"
    "modules/harddware"
  ]);
}