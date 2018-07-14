{ pkgs }:

pkgs.vimHugeX.customize {
  name = "vim";
  vimrcConfig = {
    customRC = ''
      filetype plugin on
      set nocompatible
      syntax on

      set background=dark
      set rnu 
      set clipboard=unnamedplus

      colorscheme gruvbox

      " NERD Commenter settings
      " See https://github.com/scrooloose/nerdcommenter
      let g:NERDSpaceDelims = 1
      let g:NERDDefaultAlign = 'left'

      " vimwiki settings
      " See https://github.com/vimwiki/vimwiki/blob/dev/doc/vimwiki.txt
      let g:vimwiki_list = [{'path': '~/Dropbox/notes',
                           \ 'syntax': 'markdown',
                           \ 'ext': '.md'}]

      noremap <C-p> :Files<CR>

    '';

    vam.knownPlugins = pkgs.vimPlugins;
    vam.pluginDictionaries = [
      { names = [
        "sensible"
        "vim-nix"
        "tagbar"
        "easy-align"
        "easymotion"
        "editorconfig-vim"
        "vim-nerdtree-tabs"
        "vim-expand-region"
        "vimwiki"
        "ale"
        "gitgutter"
        "fzf-vim"
        "fzfWrapper"
        "lightline-vim"
        "gruvbox"
        # "nvim-completion-manager"
        # "LanguageClient-neovim"
        "rainbow"
        "The_NERD_tree"
        "The_NERD_Commenter"
        # "tmuxline"

      ]; }
    ];
  };
}
