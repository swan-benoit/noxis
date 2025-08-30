{pkgs, ...}: {
  nix.settings.experimental-features = ["nix-command" "flakes"];

  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  environment.systemPackages = with pkgs; [
    neovim
    git
    zellij
  ];
}
