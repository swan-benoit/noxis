{ config, pkgs, ... }:

{
  home.username = "swan";
  home.homeDirectory = "/home/swan";


  home.packages = with pkgs; [
    ripgrep 
    eza 
    fzf 
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
