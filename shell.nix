{ config, pkgs, inputs, ... }:

{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      rebuild = "bash /home/apricorum/rebuild.sh";
    };
  };

  environment.systemPackages = with pkgs.fishPlugins; [
    z
    git-abbr
    autopair
  ];
}
