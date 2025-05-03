"Basic config
set number
set relativenumber

" Configuración de la línea de estado
set laststatus=2

"CHARACTER ENCODING
set encoding=utf-8

"SPELLING LANGUAGE
set spelllang=es_es
"set spell

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
colorscheme fogbell_light

"set background=light

" Habilitar el resaltado de sintaxis
syntax on
filetype plugin indent on

"CURSOR
:set cursorline
highlight CursorLine cterm=none gui=none ctermbg=235 guibg=#D3D3D3  " Gris claro

highlight Normal ctermbg=none guibg=none
highlight NormalFloat ctermbg=none guibg=none

