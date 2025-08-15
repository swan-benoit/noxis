{ config, pkgs, ... }:

{
  home.username = "swan";
  home.homeDirectory = "/home/swan";

  imports = [
    ./modules/shell
  ];


  home.packages = with pkgs; [
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
    extraConfig = {
      safe.directory = "/etc/nixos";
    };
  };

  home.stateVersion = "25.05";
}
