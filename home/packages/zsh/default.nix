{ pkgs, ... }: {
  home.file.".config/zsh/" = {
    source = ./config;
    recursive = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion = { enable = true; };
    syntaxHighlighting = { enable = true; };
    autocd = true;
    defaultKeymap = "viins";

    shellAliases = {
      n = "nvim";
      ":q" = "exit";
    };

    initExtra = ''
      source $HOME/.config/zsh/keybinds.zsh
      source $HOME/.config/zsh/zap-prompt.zsh-theme

      export NIX_LD=$(nix eval --impure --raw --expr 'let pkgs = import <nixpkgs> {}; NIX_LD = pkgs.lib.fileContents "${pkgs.stdenv.cc}/nix-support/dynamic-linker"; in NIX_LD')
    '';
  };
}
