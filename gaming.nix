{inputs, pkgs, ... }:

let
  optimise = pkg: pkg.override { stdenv = pkgs.withCFlags [ "-O3" "-flto=thin" "-mtune=native" ] (pkgs.impureUseNativeOptimizations pkgs.llvmPackages_latest.stdenv); };
in
{
  users.groups.games = { };

  environment.systemPackages = with pkgs; [
    mangohud
    obs-studio
    protontricks
	  latencyflex-vulkan
    inputs.nix-gaming.packages.${pkgs.hostPlatform.system}.wine-tkg
  ];

  programs.gamemode.enable = true;
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
  chaotic.steam.extraCompatPackages = with pkgs; [ luxtorpeda proton-ge-custom ];
  programs.gamescope = {
    enable = true;
    package = pkgs.gamescope_git;
    capSysNice = true;
  };

  chaotic.hdr.wsiPackage = true;

  environment.sessionVariables = {
    WINEFSYNC = "1";
    # https://github.com/libsdl-org/SDL/issues/6117
    SDL_GAMECONTROLLER_USE_BUTTON_LABELS = "0";

    # https://github.com/HansKristian-Work/vkd3d-proton/issues/1406
    VKD3D_CONFIG = "no_upload_hvv";
  };
}