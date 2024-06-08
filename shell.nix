{ config, pkgs, inputs, ... }:

{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      nbuild = "bash /home/apricorum/rebuild.sh";
    };
  };

  environment.systemPackages = with pkgs.fishPlugins; [
    z
    git-abbr
    autopair
  ];
}
