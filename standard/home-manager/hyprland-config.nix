{
programs.hyprland = { # or wayland.windowManager.hyprland
  enable = true;
  xwayland = {
    enable = true;
    hidpi = true;
  };
  nvidiaPatches = true;
 };
}