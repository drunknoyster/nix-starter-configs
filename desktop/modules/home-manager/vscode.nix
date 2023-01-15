{ config, pkgs, lib, ... }: {  
  programs.vscode = {
      enable = true;
        commandLineArgs = [
        "--use-gl=desktop"
        "--enable-features=UseOzonePlatform"
        "--ozone-platform=wayland"
        ];
      extensions = with pkgs.vscode-extensions; [
          dracula-theme.theme-dracula
          bbenoist.nix
      ];
  };
}