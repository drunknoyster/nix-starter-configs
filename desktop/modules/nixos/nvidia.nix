{ config, pkgs, lib, ... }:

let
   nverStable = config.boot.kernelPackages.nvidiaPackages.stable.version;
   nverBeta = config.boot.kernelPackages.nvidiaPackages.beta.version;
   nvidiaPackage =
     if (lib.versionOlder nverBeta nverStable)
 then config.boot.kernelPackages.nvidiaPackages.stable
 else config.boot.kernelPackages.nvidiaPackages.beta;

in
{
  config = {
   hardware.nvidia = {
    modesetting.enable = true;
    package = nvidiaPackage;
    powerManagement.enable = false;
   };
   hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
   };
   services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];
   };
  };
}