{pkgs, ...}: {
  imports = [
    ../shared/system
    ../shared/home/neovim-nvf
  ];

  wsl.enable = true;

  wsl.defaultUser = "swan";

  programs.zsh.enable = true;
  users.users.swan = {
    isNormalUser = true;
    extraGroups = ["wheel"];
    initialPassword = "swan";
    shell = pkgs.zsh;
  };

  networking.hostName = "swan-wsl";

  nix.settings.experimental-features = ["nix-command" "flakes"];

  system.stateVersion = "25.05"; # Did you read the comment?
}
