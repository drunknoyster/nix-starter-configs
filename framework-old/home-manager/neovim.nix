{ inputs, outputs, lib, config, pkgs, ... }: {
 programs.neovim = {
   enable = true;
   viAlias = true;
   vimAlias = true;
 };
  programs.neovim.plugins = [
 #  pkgs.vimPlugins.nvim-tree-lua
  # {
   #  plugin = pkgs.vimPlugins.vim-startify;
    # config = "let g:startify_change_to_vcs_root = 0";
   #}
 ];
}