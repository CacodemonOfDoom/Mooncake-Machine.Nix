{ config, pkgs, inputs, ... }:

{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      nbuild = "sudo nixos-switch rebuild --flake /home/apricorum/nixos#default";
    };
  };

  environment.systemPackages = with pkgs.fishPlugins; [
    z
    git-abbr
    autopair
  ];
}
