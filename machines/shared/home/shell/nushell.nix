{inputs, users, pkgs, config, ...}:

{
  programs = {
    nushell = {
      enable = true;
      configFile.source = ./config.nu;
    };
    starship.enable = true;
    starship = { enableNushellIntegration = true; };
  };
}
