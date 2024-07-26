{ config, pkgs, ... }:

{
  system.stateVersion = "23.05";

  services.caddy = {
    enable = true;
    config = ''
      :8080 {
        respond "Hello World!"
      }
    '';
  };

  networking.firewall.allowTCPPorts = [ 8080 ];
}
