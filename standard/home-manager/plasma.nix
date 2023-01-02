{ inputs, outputs, lib, config, pkgs, ... }: {
services.xserver = {
  displayManager.sddm.enable = true;
  desktopManager = {
    plasma5 = {
      enable = true;
      excludePackages = with pkgs.libsForQt5; [
        khelpcenter
        elisa
      ];
    };
  };
};
}