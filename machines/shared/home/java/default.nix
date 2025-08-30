{pkgs, ...}: let
  vars = import ./variables.nix;
  settingsTemplate = builtins.readFile ./settings.xml;
in {
  programs = {
    direnv = {
      enable = true;
      enableZshIntegration = true;
      nix-direnv.enable = true;
    };
  };

  home.packages = with pkgs; [
    maven
    jdk11
  ];

  home.file.".m2/settings.xml".text =
    builtins.replaceStrings
    ["@USERNAME@" "@PASSWORD@"]
    [vars.mavenUsername vars.mavenPassword]
    settingsTemplate;
}
