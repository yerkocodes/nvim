local keymap = vim.keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Mapeos básicos con <Leader>
keymap.set('n', '<Leader>w', ':w<CR>', { desc = 'Guardar archivo' })
keymap.set('n', '<Leader>q', ':q<CR>', { desc = 'Cerrar ventana' })
keymap.set('n', '<Leader>wq', ':wq<CR>', { desc = 'Guardar y cerrar' })  -- Corregí esto (original tenía :q<CR>)

-- Mapeo con Ctrl (modo insert y normal)
keymap.set({'n', 'i'}, '<C-s>', '<cmd>w<CR>', { desc = 'Guardar archivo (Ctrl+s)' })

-- Copy into vim in visual mode - Remember install xclip in Linux
keymap.set('v', '<C-c>', '"+y', { desc = 'Copiar al portapapeles del sistema' })
