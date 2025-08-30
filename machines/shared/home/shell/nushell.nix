{
  inputs,
  users,
  pkgs,
  config,
  ...
}: {
  programs = {
    nushell = {
      enable = true;
      configFile.source = ./config.nu;
      shellAliases = {
        update = "nh switch os ~/noxis";
      };
    };
    carapace.enable = true;
    carapace.enableNushellIntegration = true;

    starship.enable = true;
    starship = {enableNushellIntegration = true;};
  };
}
