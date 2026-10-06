
{
  binds = {
    # Movement
    "Mod+Up".focus-window-up = {};
    "Mod+Down".focus-window-down = {};
    "Mod+Left".focus-column-left = {};
    "Mod+Right".focus-column-right = {};
    
    "Mod+Ctrl+Up".move-window-up = {};
    "Mod+Ctrl+Down".move-window-down = {};
    "Mod+Ctrl+Left".move-column-left = {};
    "Mod+Ctrl+Right".move-column-right = {};
    
    "Mod+Home".focus-column-first = {};
    "Mod+End".focus-column-last = {};
    "Mod+Ctrl+Home".move-column-to-first = {};
    "Mod+Ctrl+End".move-column-to-last = {};

    "Mod+Page_Up".focus-workspace-up = {};
    "Mod+Page_Down".focus-workspace-down = {};
    "Mod+Ctrl+Page_Up".move-column-to-workspace-up = {};
    "Mod+Ctrl+Page_Down".move-column-to-workspace-down = {};

    # Modify
    "Mod+Q".close-window = {};

    "Mod+F".maximize-column = {};
    "Mod+Shift+F".fullscreen-window = {};
    
    "Mod+Minus".set-column-width = "-10%";
    "Mod+Equal".set-column-width = "+10%";
    #"Mod+Minus".set-column-width = "-10";
    #"Mod+Equal".set-column-width = "+10";
    
    "Mod+Shift+Minus".set-window-height = "-10%";
    "Mod+Shift+Equal".set-window-height = "+10%";
    #"Mod+Minus".set-winddow-height = "-10";
    #"Mod+Equal".set-winddow-height = "+10";

    "Mod+BracketLeft".consume-or-expel-window-left = {};
    "Mod+BracketRight".consume-or-expel-window-right = {};

    "Mod+Comma".consume-window-into-column = {};
    "Mod+Period".expel-window-from-column = {};

    # Floating
    "Mod+V".toggle-window-floating = {};

    # noct
    

    # Misc
    "Mod+Return".spawn = "kitty";
  };
}