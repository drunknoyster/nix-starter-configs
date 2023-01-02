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
     { device = "/dev/disk/by-uuid/72323645-4d0b-41e4-bf90-1fd965bd3882";
       fsType = "ext4";
     };

     fileSystems."/boot" = 
       { device = "/dev/disk/by-uuid/1D33-45FD";
         fsType = "vfat";
       };

   swapDevices =
   [ { device = "dev/disk/by-uuid/60ba3549-a97c-495d-9f55-947487a34e16"; };
   ];

   networking.useDHCP = lib.mkDefault true;

   nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
   powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";

   hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}