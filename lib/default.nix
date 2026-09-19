{ lib, ... }:
{
  # ../. references the parent directory of the directory this 
  # file lives in.
  #
  # Example of usage:
  # ─────────────────────────────────────────────────────────────
  # map mylib.referenceFromRoot []
  # It will reference everything from the root directory of this
  # project.
  referenceFromRoot = lib.path.append ../.;
}