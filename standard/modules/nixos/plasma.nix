{ config, pkgs, lib, ... }: {
  services.xserver = {
    displayManager = {
      sddm.enable = true;
      #session = [
      #  {
       # manage = "desktop";
       # name = "Hyprland (nVidia)";
       # start = "exec wrappedh1";
       # }
      #];
    };
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
