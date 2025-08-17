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

  home.stateVersion = "25.05";
}
