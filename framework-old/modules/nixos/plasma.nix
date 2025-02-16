{ config, pkgs, lib, ... }: {
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
  environment.systemPackages = with pkgs; [
    ark
    kate
    kcalc
  ];
}
