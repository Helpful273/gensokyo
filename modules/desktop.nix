{
  mylib,
  ...
}:
{
  imports = (map mylib.fromRoot [
    "modules/base"
    "modules/desktop"
  ]);
}