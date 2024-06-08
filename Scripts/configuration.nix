#!/usr/bin/env bash

cp ${pkgs.corectrl}/share/applications/org.corectrl.CoreCtrl.desktop /home/apricorum/.config/autostart/org.corectrl.CoreCtrl.desktop
sudo nano /etc/polkit-1/rules.d/90-corectrl.rules
awk '{ gsub(/your-user-group/, "wheel"); print }' 