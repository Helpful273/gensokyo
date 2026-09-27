{
  mylib,
  ...
}:
{
  imports = (map mylib.fromRoot [
    "system/core"
    "system/hardware"
  ]);
}