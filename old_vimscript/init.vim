"Author: Christian Regueiro

set number
set mouse=a "habilita el mouse
syntax enable
set showcmd "muestra en la barra inferior los comandos usados
set encoding=UTF-8
set showmatch "muestra el final de simbolos ({[]})
set hidden "desactiva sintaxis de nvim para usar treesitter
set shiftwidth=4
set tabstop=4
set showtabline=3 "barra superior (buffer)
"set relativenumber
set termguicolors
"keybinds
let mapleader = " "
nmap <leader>w :w <CR>
nmap <leader>q :q <CR>
nmap <leader>wq :wq <CR>
"Cheatsheet
nmap <leader>cs :Cheatsheet <CR>
"Tagbar
nmap <leader>tb :Tagbar <CR>
"CoC
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implemention)
nmap <silent>gr <Plug>(coc-references)
nmap <leader>gs :CocSearch
"requirements
source ~/.config/nvim/plugins/plugins.vim
source ~/.config/nvim/plugins/plug-config.vim

"set python interpreter
let g:python_host_prog= '/usr/bin/python'
let g:python3_host_prog= '/usr/bin/python3'

"NERDtree
let g:indentLine_fileTypeExclude=["nerdtree"]
nmap <Leader>e :NERDTreeToggle<CR>
let g:NERDTreeGitStatusUseNerdFonts = 0

"Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"Habilitar Treesitter
lua << EOF
require("nvim-treesitter.configs").setup({
    ensure_installed = { "javascript", "typescript", "lua", "vim", "json", "html", "rust", "tsx" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
})
EOF

"FIXME: Scope (tabs)
lua << EOF
require("scope").setup({})
EOF

"Lightline
set laststatus=2

"Colorscheme
colorscheme kanagawa
let g:lightline = {'colorscheme' : 'wombat'}

"Autocomplete commands
call wilder#setup({'modes': [':', '/', '?']})

