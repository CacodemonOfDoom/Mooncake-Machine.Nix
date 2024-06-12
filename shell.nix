{ config, pkgs, inputs, ... }:

{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      rebuild = "bash /home/apricorum/rebuild.sh";
    };
  };

  environment.systemPackages = with pkgs; [
    oh-my-fish
    fishPlugins.z
    fishPlugins.git-abbr
    fishPlugins.autopair
    fishPlugins.bobthefisher
  ];
}
