{pkgs, ...}: {
  home.packages = with pkgs; [
    lazygit
  ];

  programs.git = {
    enable = true;
    userName = "Swan BENOIT";
    userEmail = "swan.benoit@gmail.com";
  };
}
