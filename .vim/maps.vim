let mapleader=" "

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :q<CR>

"NERDTreeFind
nmap <Leader>nt :NERDTreeFind<CR>

nnoremap <leader>gs :Gstatus<CR> " Estado de Git
nnoremap <leader>gc :Gcommit<CR> " Hacer commit
nnoremap <leader>gp :Gpush<CR> " Hacer push

" Format all Code & current position
nmap <Leader>f :set filetype<CR>gg=G
nmap <Leader>F =ap

" Toggle line number mode
nmap <Leader>rn :set rnu!<cr>

"Copy into vim in visual mode - Remember install xclip in Linux
vmap <C-c> "+y

" ================== FZF ==================
" Mapeo para buscar archivos en el directorio actual
nmap <Leader>p :Files<CR>
nmap <Leader>ag :Ag<CR>

" Mapeo para buscar en el contenido de los archivos
"nmap <Leader>fg :Ag<CR>

" Mapeo para buscar en el historial de comandos
nmap <Leader>fh :History<CR>

" Mapeo para buscar en los buffers abiertos
nmap <Leader>fb :Buffers<CR>

" Mapeo para buscar en el repositorio Git
nmap <Leader>fgit :GFiles<CR>

" Mapeo para buscar en el contenido de Git
nmap <Leader>fgc :Ggrep<CR>

" Mapeo para buscar en el contenido de archivos abiertos
nmap <Leader>fw :Rg<CR>

" Mapeo para buscar en el contenido de archivos de texto
nmap <Leader>ft :Tags<CR>

" Mapeo para buscar en el contenido de archivos de configuración
nmap <Leader>fc :CocList<CR>
" ================== FZF END ==================

"Search keywords with The Silver Searcher
nmap <Leader>ag :Ag<CR>

"TABS moving
nmap <C-n> :tabnew .<CR>
nmap <C-Right> :tabnext <CR>
nmap <C-Left> :tabprevious <CR>

" Asigna Ctrl + . para activar la acción rápida de corrección (Code Action) en coc.nvim
nmap <C-.> <Plug>(coc-codeaction)
