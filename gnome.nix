{ pkgs, ...}:

{

    environment.systemPackages = with pkgs; [
        gnomeExtensions.dock-reloaded
        gnome.gnome-tweaks
        gnomeExtensions.forge
    ];

}