{
  mylib,
  ...
}:
{
  imports = (map mylib.fromRoot [
    "system/desktop"
    "system/core"
    "system/hardware"
  ]);
}