{ config, lib, pkgs, utils, ... }: {

    services.xserver.desktopManager.lxqt.enable = true;

    # virtual file systems support for PCManFM-QT
    services.gvfs.enable = true;

    services.upower.enable = config.powerManagement.enable;

    services.xserver.libinput.enable = true;

    xdg.portal.lxqt.enable = true;

}
