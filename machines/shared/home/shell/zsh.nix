{
  inputs,
  users,
  pkgs,
  config,
  ...
}: {
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      shellAliases = {
        ll = "ls -l";
        update = "nh os switch ~/noxis";
      };
      history.size = 10000;
    };

    starship.enable = true;
    starship = {
      enableZshIntegration = true;
    };

    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
  };
}
