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

   fileSystems."/mnt/WDBlackSSD" =
     { device = "/dev/disk/by-uuid/70aede78-ab6e-4ec8-917f-a9e553437e16";
       fsType = "btrfs";
       options = [
         "defaults"
         "compress=zstd"
       ];
     };

   fileSystems."/mnt/WDBlack" =
     { device = "/dev/disk/by-uuid/01D8238D7B747420";
       fsType = "ntfs3";
       options = [
         "uid=1000"
         "gid=1000"
         "rw"
         "user"
         "exec"
         "umask=000"
       ];
     };

   fileSystems."/" =
     { device = "/dev/disk/by-uuid/bdb10d13-e7f8-4551-af7b-55c808b41b3f";
       fsType = "ext4";
     };

     fileSystems."/boot" = 
       { device = "/dev/disk/by-uuid/5AB6-5DDD";
         fsType = "vfat";
       };

   swapDevices =
   [ { device = "/dev/disk/by-uuid/cf7aaccd-ba5e-412b-87ad-8152c0476752"; }
   ];

   networking.useDHCP = lib.mkDefault true;

   nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
   powerManagement.cpuFreqGovernor = lib.mkDefault "ondemand";
   hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
