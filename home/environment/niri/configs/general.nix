{
  prefer-no-csd = {};

  input = {
    keyboard = {
      xkb = {
        layout = "us";
      };
    };

    touchpad = {
      tap = {};
      dwt = {};
      natural-scroll = {};
    };
  };

  layout = {
    gaps = 20;

    #TODO: add bash script for toggling zoom layout?
    #struts = {
    #  left = 64;
    #  right = 64; 
    #};

    shadow.draw-behind-window = true;

    focus-ring = {
      width = 4;
      active-color = "rgb(255, 145, 176)";
    };
  };

  hotkey-overlay = {
    skip-at-startup = {};
  };

  screenshot-path = "~/Pictures/Screenshots/Date %Y-%m-%d Time %H-%M-%S.png";
}