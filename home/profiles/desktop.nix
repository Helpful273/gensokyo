{
  modules = {
    editors = {
      vscode.enable = true;
    };

    programs = {
      core.git.enable = true;

      browsers.firefox.enable = true;

      social.vesktop.enable = true;
    };

    terminal = {
      # terminal stuffs
      emulators.kitty.enable = true;
      programs.starship.enable = true;
      shell.fish.enable = true;

      # programs
      programs.btop.enable = true;
      programs.yazi.enable = true;
    };

    environment = {
      niri.enable = true;
      noctalia.enable = true;
    };
  };
}