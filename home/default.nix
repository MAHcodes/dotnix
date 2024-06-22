{
  imports = [ ./packages ];

  home = {
    username = "mhmdali102";
    homeDirectory = "/home/mhmdali102";
    stateVersion = "24.05";

    file = {
      ".xinitrc".text = ''
        exec awesome
      '';
    };
  };

  programs.home-manager.enable = true;
}
