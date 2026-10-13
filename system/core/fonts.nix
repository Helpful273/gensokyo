{
  pkgs,
  config,
  ...
}:
{
  fonts.packages = with pkgs; [
    nerd-fonts.symbols-only
    nerd-fonts.jetbrains-mono

    noto-fonts 
    noto-fonts-color-emoji 
    
    source-sans 
    source-serif 

    source-han-sans
    source-han-serif 
    source-han-mono 

    maple-mono.NF-CN-unhinted
  ];
}