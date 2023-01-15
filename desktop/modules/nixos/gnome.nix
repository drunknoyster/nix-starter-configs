{ config, pkgs, lib, ... }: {
services.xserver = {
  displayManager.gdm.enable = true;
  desktopManager = {
    gnome = {
      enable = true;
  #    excludePackages = (with pkgs; [
   #     gnome-tour ])
    # ++ (with pkgs.gnome; [
     #   cheese
      #  gnome-music
       # gedit
        #epiphany
        #geary
        #totem
        #tali
        #iagno
        #hitori
        #atomix
        #]);
    };
  };
};
}
