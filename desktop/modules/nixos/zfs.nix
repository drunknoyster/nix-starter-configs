{ config, pkgs, ... }:
  { boot.supportedFilesystems = [ "zfs" ];
    networking.hostId = "2287202b";
  }
