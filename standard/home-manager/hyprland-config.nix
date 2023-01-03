{ inputs, outputs, lib, config, pkgs, ... }: {
home.packages = with pkgs; [
  swaylock-effects
  wl-clipboard
  dunst
  jq
  starship
  slurp
  grim
  tty-clock
  xdg-desktop-portal-wlr
  wofi
  fish
  kitty
  rustup
  cava
];
}
  


