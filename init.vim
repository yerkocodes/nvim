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
set cursorcolumn
highlight CursorLine cterm=underline gui=underline
"CURSIVE COMMENTS
highlight Comment cterm=italic

"INDENT
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set smartindent

"Imports config
so $LOCALAPPDATA\nvim\.vim\maps.vim
so $LOCALAPPDATA\nvim\.vim\plugins.vim

"THEME
"colorscheme lunarised
"colorscheme base16-grayscale-light
set background=light
colorscheme mies

" Habilitar el resaltado de sintaxis
syntax on
filetype plugin indent on

