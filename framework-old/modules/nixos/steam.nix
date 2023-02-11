{ config, pkgs, lib, ... }: {
programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
};
environment.sessionVariables = rec {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatbilitytools.d";
};
#environment.systemPackages = with pkgs; [
   # gamescope
   # gamemode
#];
}
