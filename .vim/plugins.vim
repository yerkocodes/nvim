" Usar vim-plug para gestionar plugins
call plug#begin(expand('$HOME/.config/nvim/.vim/plugged'))

" Plugins esenciales
Plug 'neoclide/coc.nvim', {'branch': 'release'}             " Autocompletado y LSP
Plug 'tpope/vim-fugitive'                                   " Integración de Git
Plug 'tpope/vim-repeat'
Plug 'sheerun/vim-polyglot'                                 " Soporte para múltiples lenguajes
Plug 'prettier/vim-prettier', { 'do': 'npm install' }       " Formateo de código
Plug 'scrooloose/nerdtree'                                  " Explorador de archivos
Plug 'preservim/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'                       "TMUX Navigator
Plug 'Yggdroot/indentLine'                                  " Líneas de indentación

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }         " Fuzzy finder
Plug 'junegunn/fzf.vim'                                     " Integración de fzf con Vim

Plug 'airblade/vim-gitgutter'                               " Indicador de cambios en Git

Plug 'maximbaz/lightline-ale'                               " Errores y advertencias en la barra de estado
Plug 'itchyny/lightline.vim'                                " Barra de estado personalizable y minimalista
Plug 'itchyny/vim-gitbranch'                                " Rama actual de Git en la barra de estado

Plug 'jiangmiao/auto-pairs'                                 "Syntax close { --> {}

" SmoothScrolling
Plug 'psliwka/vim-smoothie'                                 "Smoothing in scroll

"THEMES https://vimcolorschemes.com
"Plug 'alexblackie/lunarised'                              " Theme light mode
"Plug 'chriskempson/base16-vim'
Plug 'jaredgorski/Mies.vim'
"Plug 'gmr458/cold.nvim'
"Plug 'logico/typewriter'

Plug 'akinsho/git-conflict.nvim'                            " Conflictos de git

Plug 'severin-lemaignan/vim-minimap'

call plug#end()

"************ CONFIG ************

" Configuración de COC (Conquer of Completion)
" Asegúrate de tener Node.js instalado para usar COC
"
" Extensiones de CoC
" - coc-tsserver: Soporte para TypeScript y JavaScript
" - coc-html: Soporte para HTML
" - coc-css: Soporte para CSS
" - coc-angular: Soporte para Angular
" - coc-prettier: Formateador de código
" - coc-eslint: Soporte para ESLint
" - coc-json: Soporte para JSON
" - coc-snippets: Soporte para snippets
let g:coc_global_extensions = ['coc-tsserver', 'coc-html', 'coc-css', 'coc-angular', 'coc-prettier', 'coc-eslint', 'coc-json', 'coc-snippets']

" Configuración de Prettier
let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0

" NERDTREE
let NERDTreeShowHidden=1     "Muestra los archivos y directorios ocultos
let NERDTreeQuitOnOpen=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"IdentLine
let g:indentLine_char_list = ['|', '¦', '¦', '¦']
let g:indentLine_fileType=['javascript', 'html', 'css', 'scss', 'typescript', 'vim', 'nerdtree', 'json', 'sql', 'mysql']
"let g:indentLine_indentLevel= 20
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 1

"   Lightlane
"let g:lightline = {
            "\ 'colorscheme': 'wombat',
            "\ 'active': {
            "\   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
            "\   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
            "\ },
            "\ 'inactive': {
            "\   'left': [['inactive'], ['relativepath']],
            "\   'right': [['bufnum']]
            "\ },
            "\ 'component': {
            "\   'bufnum': '%n',
            "\   'inactive': 'inactive'
            "\ },
            "\ 'component_function': {
            "\   'gitbranch': 'gitbranch#name',
            "\   'kitestatus': 'kite#statusline'
            "\ },
            "\ 'subseparator': {
            "\   'left': '¦',
            "\   'right': '¦'
            "\ }
            "\}
let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
            \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
            \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
            \ },
            \ 'inactive': {
            \   'left': [['inactive'], ['relativepath']],
            \   'right': [['bufnum']]
            \ },
            \ 'component': {
            \   'bufnum': '%n',
            \   'inactive': 'inactive'
            \ },
            \ 'component_function': {
            \   'gitbranch': 'gitbranch#name',
            \   'kitestatus': 'kite#statusline'
            \ },
            \ 'subseparator': {
            \   'left': '¦',
            \   'right': '¦'
            \ }
            \}

