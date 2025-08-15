{inputs, users, pkgs, config, ...}:

{
  programs = {
    nushell.enable = true;
    starship.enable = true;
    starship = { enableNushellIntegration = true; };
  };
}
