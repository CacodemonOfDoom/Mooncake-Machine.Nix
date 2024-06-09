{ pkgs, config, ...  }:

{
  
  # Enable automatic login for the user.
 services.xserver.displayManager.autoLogin.enable = true;
 services.xserver.displayManager.autoLogin.user = "apricorum";

  
  # Enable the X11 windowing system.
 services.xserver.enable = true;
 services.xserver.windowManager.i3.updateSessionEnvironment = true;
 services.xserver.windowManager.i3.extraPackages = with pkgs; [
    dmenu
    i3status
  ];  
 services.xserver.windowManager.i3.enable = true;
  # Configure keymap in X11
 services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  services.xserver.videoDrivers = [ "radeon" ];
  services.xserver.deviceSection = ''
    Option "TearFree" "true"
    Option "VariableRefresh" "true"
    ''; 
  services.xserver.displayManager.setupCommands = ''
    ${pkgs.xorg.xrandr}/bin/randr --output DP-1 --right-of DP-2 
  '';
}
