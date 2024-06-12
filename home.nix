{ config, pkgs, inputs, fetchFromGitHub, ... }:

{
  home.username = "apricorum";
  home.homeDirectory = "/home/apricorum";

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    neovim
    vesktop
    mediawriter
    fish
    alacritty
    pavucontrol  
    git
    yazi
    gh
    taskwarrior3
    zathura  
    mpv
    sxiv
    vscodium
    unzip
    p7zip
    lightdm-gtk-greeter
    pulseaudio-ctl
    feh
    scrot
  ];

  home.file = {
  };
  home.sessionVariables = {
     EDITOR = "neovim";
  };
  # Programs
  programs.git = {
    enable = true;
    userName = "CacodemonOfDoom";
    userEmail = "fabio9000dg@gmail.com";
    aliases = {
      pu = "push";
      co = "checkout";
      cm = "commit";
    };
  };

  xdg.mimeApps.defaultApplications = {
    "text/*" = [ "neovide.desktop "];
    "application/pdf" = [ "zathura.desktop "];
    "image/*" = [ "sxiv.desktop" ];
    "video/png" = [ "mpv.desktop" ];
    "video/jpg" = [ "mpv.desktop" ];
    "video/*" = [ "mpv.desktop "];
  };

  programs.home-manager.enable = true;
}
