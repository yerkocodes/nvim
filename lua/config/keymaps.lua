-- 1. Primero define el líder
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"  -- Líder para buffers locales (opcional)

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Atajos básicos
map('n', '<Leader>w', ':w<CR>', { desc = 'Guardar archivo' })
map('n', '<Leader>q', ':q<CR>', { desc = 'Cerrar ventana' })
map('n', '<Leader>wq', ':wq<CR>', { desc = 'Guardar y cerrar' })
map('n', '<C-s>', ':w<CR>', { desc = 'Guardar archivo (Ctrl+s)' })

-- Manejo de portapapeles
map('v', '<C-c>', '"+y', { desc = 'Copiar al portapapeles del sistema' })

-- Manejo de pestañas
map('n', '<C-n>', ':tabnew .<CR>', { desc = 'Nueva pestaña' })
map('n', '<C-Right>', ':tabnext<CR>', { desc = 'Siguiente pestaña' })
map('n', '<C-Left>', ':tabprevious<CR>', { desc = 'Pestaña anterior' })

-- Deshabilitar suspensión con Ctrl+z (opcional)
map('n', '<C-z>', '<Nop>')
map('i', '<C-z>', '<Nop>')

-- Undo con Ctrl+z (comportamiento como 'u')
map('n', '<C-z>', 'u', { desc = 'Deshacer (undo)' })
map('i', '<C-z>', '<C-o>u', { desc = 'Deshacer en modo inserción' })

map('n', '<Leader>nt', ':NvimTreeToggle<CR>', opts)
