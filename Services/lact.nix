{ pkgs, config, ... }:

{
        systemd.services.lact = {
            enable = true;
            serviceConfig = {
                Type = "simple";
                User = "apricorum";
                ExecStart  = "${pkgs.lact}/bin/lact daemon";
            };
                wantedBy = [ "multi-user.target" ];
        };
}