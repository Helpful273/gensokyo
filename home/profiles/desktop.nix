{
  modules = {
    editors = {
      vscode.enable = true;
    };

    programs = {
      core.git.enable = true;
    };

    terminal = {
      emulators.kitty.enable = true;
      programs.btop.enable = true;
    };

    environment = {
      niri.enable = true;
      noctalia.enable = true;
    };
  };
}