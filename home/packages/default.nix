{ pkgs, ... }: {
  imports = [ ./git ./zsh ./neovim ./wezterm ];

  home.packages = with pkgs; [ eza nixfmt-classic ];
}
