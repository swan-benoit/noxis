{
  config,
  pkgs,
  ...
}: {
  home.username = "swan";
  home.homeDirectory = "/home/swan";

  imports = [
    ../shared/home
  ];

  home.packages = with pkgs; [
    yazi
    lazygit
    ripgrep
    eza
    fzf
    alacritty
  ];

  programs.git = {
    enable = true;
    userName = "Swan BENOIT";
    userEmail = "swan.benoit@gmail.com";
  };

  home.stateVersion = "25.05";
}
