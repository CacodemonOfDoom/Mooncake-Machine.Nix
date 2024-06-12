{ pkgs, config, ...  }:

{
  
  # Enable automatic login for the user.
 services.xserver.displayManager.autoLogin.enable = true;
 services.xserver.displayManager.autoLogin.user = "apricorum";
 services.xserver.displayManager.lightdm.greeters.gtk.enable = true;
 services.xserver.displayManager.xpra.pulseaudio = true;
  # Enable the X11 windowing system.
 services.xserver.enable = true;
 services.xserver.windowManager.i3.updateSessionEnvironment = true;
 services.xserver.windowManager.i3.enable = true;
  # Configure keymap in X11
 services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

#  services.xserver.videoDrivers = [ "radeon" ];
 # services.xserver.deviceSection = ''
  #  Option "VariableRefresh" "true"
   # Option "TearFree" "True"
    #''; 
}
