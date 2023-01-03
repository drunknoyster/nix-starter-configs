{ inputs, outputs, lib, config, pkgs, ... }: {
wayland.windowManager.hyprland = { # or wayland.windowManager.hyprland
  enable = true;
  xwayland = {
    enable = true;
    hidpi = true;
  };
  nvidiaPatches = true;
 };
}
