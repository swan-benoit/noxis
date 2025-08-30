{
  lib,
  pkgs,
  ...
}: let
  vars = import ./variables.nix;
  settingsTemplate = builtins.readFile ./settings.xml;
in {
  home.packages = with pkgs; [
    maven
  ];

  home.file.".m2/settings.xml".text =
    builtins.replaceStrings
    ["@USERNAME@" "@PASSWORD@"]
    [vars.mavenUsername vars.mavenPassword]
    settingsTemplate;
}
