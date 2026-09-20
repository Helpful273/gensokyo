{
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    # Core Tools
    fastfetch
    git
    neovim

    # Archival Tools
    zip
    p7zip
    unzip

    # Networking Tools
    wget

    # System Monitoring
    btop

    # Miscellaneous
  ];
}