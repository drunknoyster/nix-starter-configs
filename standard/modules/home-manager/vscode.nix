{ config, pkgs, lib, ... }: {  
  programs.vscode = {
      enable = true;
      extensions = with pkgs.vscode-extensions; [
          dracula-theme.theme.dracula
          bbenoist.Nix

      ];
  };
}