-- Author: Christian Regueiro

local g = vim.g
local o = vim.o

-- Plugins (there are vimscript files in ~/.config/nvim/plugins/plug-config.vim)
-- Plugins (there are vimscript files in ~/.config/nvim/plugins/plugins.vim)
vim.cmd('source ~/.config/nvim/plugins/plugins.vim')
vim.cmd('source ~/.config/nvim/plugins/plug-config.vim')

-- cmd('syntax on')

o.number = true
o.mouse = 'a'
o.showcmd = true
vim.cmd('set encoding=utf-8')
o.hidden = true
o.shiftwidth = 4
o.tabstop = 4
o.showtabline = 2
o.termguicolors = true

g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>wq', ':wq<CR>', { noremap = true, silent = true })

-- Cheatsheet
vim.api.nvim_set_keymap('n', '<leader>cs', ':Cheatsheet<CR>', { noremap = true, silent = true })
-- Tagbar
vim.api.nvim_set_keymap('n', '<leader>tb', ':Tagbar<CR>', { noremap = true, silent = true })
-- CoC
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implemention)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gs', ':CocSearch<CR>', { noremap = true, silent = true })


-- Python interpreter
g.python_host_prog = '/usr/bin/python'
g.python3_host_prog = '/usr/bin/python3'

-- NERDTree
g.indentLine_fileTypeExclude = { 'nerdtree', 'startify' }
g.NERDTreeGitStatusIndicatorMapCustom = {
  Modified = '✹',
  Staged = '✚',
  Untracked = '✭',
  Renamed = '➜',
  Unmerged = '═',
  Deleted = '✖',
  Dirty = '✗',
  Clean = '✔︎',
  Unknown = '?',
}
vim.api.nvim_set_keymap('n', '<leader>e', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<CR>', { noremap = true, silent = true })

-- Treesitter
require("nvim-treesitter.configs").setup({
    ensure_installed = { "javascript", "typescript", "lua", "vim", "json", "html", "rust", "tsx" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
})

-- Scope
require("scope").setup({})

-- lualine
require('lualine').setup()

-- colorscheme
vim.cmd('colorscheme kanagawa')

-- wilder
vim.cmd('call wilder#setup({"modes": [":", "/", "?"]})')
-- gitsigns
require('gitsigns').setup()
