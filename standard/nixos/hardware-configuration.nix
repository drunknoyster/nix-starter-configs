# This is just an example, you should generate yours with nixos-generate-config and put it in here.
{ config, lib, pkgs, modulesPath, ...}:
{
   imports = [
     (modulesPath + "/installer/scan/not-detected.nix")
   ];

   boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usb_storage" "usbhid" "sd_mod" ];
   boot.initrd.kernelModules = [ ];
   boot.kernelModules = [ "kvm-intel" ];
   boot.extraModulePackages = [ ];

   fileSystems."/" =
     { device = "/dev/disk/by-uuid/d8918740-b13c-435f-a7ea-a43734bff4c2";
       fsType = "ext4";
     };

     fileSystems."/boot" = 
       { device = "/dev/disk/by-uuid/44E9-2F64";
         fsType = "vfat";
       };

   swapDevices =
   [ { device = "dev/disk/by-uuid/e4420d2d-5054-4815-8826-efa011afd93a"; };
   ];

   networking.useDHCP = lib.mkDefault true;

   nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
   powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";

   hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}