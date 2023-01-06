{ config, pkgs, lib, ... }: {
  services.xserver = {
    displayManager = {
      sddm.enable = true;
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
    latte-dock
    lightly-qt
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    kde-rounded-corners
    mpv
    python310Packages.websockets
    python310Packages.websockify
    libsForQt5.plasma-framework
    gst_all_1.gst-libav
    libsForQt5.qt5.qtdeclarative
    libsForQt5.qt5.qtwebsockets
    libsForQt5.qt5.qtwebchannel
    vulkan-headers
    cmake
  ];
}
