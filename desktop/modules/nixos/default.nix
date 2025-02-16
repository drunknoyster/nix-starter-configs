# Add your reusable NixOS modules to this directory, on their own file (https://nixos.wiki/wiki/Module).
# These should be stuff you would like to share with others, not your personal configurations.

{
  # List your module files here
  # my-module = import ./my-module.nix;
  nvidia = import ./nvidia.nix;
  #hyprland = import ./hyprland.nix;
  steam = import ./steam.nix;
  plasma = import ./plasma.nix;
  gnome = import ./gnome.nix;
  openrazer = import ./openrazer.nix;
  zfs = import ./zfs.nix;
  lxqt = import ./lxqt.nix;
}
