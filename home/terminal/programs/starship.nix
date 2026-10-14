{
  lib,
  config,
  ...
}:
let
  cfg = config.modules.terminal.programs.starship;
in
{
  options = {
    modules.terminal.programs.starship.enable = lib.mkEnableOption "Shell prompt";
  };

  config = lib.mkIf cfg.enable {
    programs.starship = {
      enable = true;

      enableBashIntegration = true;
      enableFishIntegration = true;

      settings = let
        colour1 = "#FF91B0";
        colour2 = "#fb6b94";
        colour3 = "#e74a77";
        colour4 = "#da2c5d";
        textColour = "#ffaab9";
      in {
        format = lib.concatStrings [
          "[░▒▓](${colour1})"
          "$os"
          "$username"
          "[](bg:${colour2} fg:${colour1})"
          "$directory"
          "[](bg:${colour3} fg:${colour2})"
          "$git_branch"
          "[](bg:${colour4} fg:${colour3})"
          "$time"
          "[ ](fg:${colour4})"
        ];

        os = {
          disabled = false;
          style = "bg:${colour1}";
          format = "[ 󱄅 ]($style)";
        };

        username = {
          show_always = true;
          style_user = "bg:${colour1}";
          style_root = "bg:${colour1}"; 
          format = "[ $user ]($style)";
        };

        directory = {
          style = "bg:${colour2}";
          format = "[  $path ]($style)";
          truncation_length = 3;
          truncation_symbol = ".../";
        };

        git_branch = {
          style = "bg:${colour3} fg:${textColour}";
          format = "[  $branch ]($style)";
        };

        #git_status = {

        #};

        time = {
          disabled = false;
          style = "bg:${colour4} fg:${textColour}";
          time_format = "%I:%M %p";
          format = "[   $time ]($style)";
        };
      };
    };
  };
}