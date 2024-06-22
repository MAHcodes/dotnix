{ pkgs, ... }:

{
  home.packages = with pkgs; [ wezterm ];

  programs.wezterm = { enable = true; };

  xdg.configFile."wezterm/wezterm.lua".source = ./wezterm.lua;

  xdg.desktopEntries.wezterm = {
    name = "Wezterm";
    genericName = "Wezterm";
    exec = "wezterm %U";
    terminal = false;
    type = "Application";
    categories = [ "X-terminal" ];
  };

}
