{ 
  config, 
  pkgs, 
  myvars, 
  ... 
}:
{
  home.username = myvars.username;
  home.homeDirectory = "/home/helpful";

  home.packages = with pkgs; [
    zip
    unzip
    p7zip
  ];

  programs.git.enable = true;

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
    ];
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "26.05";
}