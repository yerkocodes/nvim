"Basic config
set number
set relativenumber

" Configuración de la línea de estado
set laststatus=2

"CHARACTER ENCODING
set encoding=utf-8

"SPELLING LANGUAGE
set spelllang=es_es

"CURSOR
set cursorline
"set cursorcolumn

" Configurar el color de la línea del cursor
highlight CursorLine cterm=NONE ctermbg=235 guibg=#D3D3D3  " Gris claro
"highlight CursorColumn cterm=NONE ctermbg=235 guibg=#D3D3D3  " Gris claro


""CURSIVE COMMENTS
highlight Comment cterm=italic

"INDENT
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set smartindent

"Imports config
so $HOME/.config/nvim/.vim/maps.vim
so $HOME/.config/nvim/.vim/plugins.vim
so $HOME/.config/nvim/.vim/functions.vim

"THEME
"colorscheme lunarised
"colorscheme base16-grayscale-light

"colorscheme mies

colorscheme typewriter
"colorscheme typewriter-night

"set background=light

highlight Normal ctermbg=none guibg=none
highlight NormalFloat ctermbg=none guibg=none

" Habilitar el resaltado de sintaxis
syntax on
filetype plugin indent on

"Minimap Config
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
