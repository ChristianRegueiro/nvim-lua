call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'nvim-telescope/telescope.nvim' |
	\ Plug 'nvim-lua/plenary.nvim' |
	\ Plug 'BurntSushi/ripgrep' |
	\ Plug 'sharkdp/fd' |
	\ Plug 'nvim-treesitter/nvim-treesitter' |
Plug 'rebelot/kanagawa.nvim'
Plug 'rcarriga/nvim-notify'
Plug 'gelguy/wilder.nvim'
Plug 'sudormrfbin/cheatsheet.nvim' |
	\ Plug 'nvim-lua/popup.nvim' |
	\ Plug 'nvim-lua/plenary.nvim' |
	\ Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/tagbar'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tiagovla/scope.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'romgrk/barbar.nvim' |
	\ Plug 'nvim-tree/nvim-web-devicons'
Plug 'github/copilot.vim'
Plug 'nvim-lualine/lualine.nvim'

call plug#end()
