-- Key mappings
local map = vim.keymap.set

-- Set leader key to space
vim.g.mapleader = " "

map('n', '<C-s>', ':w<CR>', { silent = true })
map('n', '<leader>w', ':w<CR>', { silent = true })
map('n', '<leader>q', ':q<CR>', { silent = true })

-- File explorer
map('n', '<leader>nt', ':NvimTreeToggle<CR>', { silent = true })

-- Telescope mappings
-- map('n', '<leader>p', ':Telescope find_files<CR>', { silent = true })
map('n', '<leader>p', function()
  require('telescope.builtin').find_files({ hidden = true })
end, { silent = true })

map('n', '<leader>ag', ':Telescope live_grep<CR>', { silent = true })
-- map('n', '<leader>ff', ':Telescope find_files<CR>', { silent = true })
-- map('n', '<leader>fg', ':Telescope live_grep<CR>', { silent = true })
-- map('n', '<leader>fb', ':Telescope buffers<CR>', { silent = true })
-- map('n', '<leader>fh', ':Telescope help_tags<CR>', { silent = true })

-- Comment.nvim
  -- gcc - Comentar/descomentar línea actual
  -- gc - Comentar/descomentar selección (en modo visual)
  -- gcA - Añadir comentario al final de la línea
  -- gco - Añadir comentario en la línea siguiente
  -- gcO - Añadir comentario en la línea anterior

-- Format all Code & current position
map('n', '<leader>f', ':set filetype<CR>gg=G', { silent = true })
map('n', '<leader>F', '=ap', { silent = true })

-- Copy into vim in visual mode - Remember install xclip in Linux
vim.keymap.set('v', '<C-c>', '"+y', { noremap = true, silent = true })

-- Tabs moving
vim.keymap.set('n', '<C-n>', ':tabnew .<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', ':tabnex <CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Left>', ':tabprevious <CR>', { noremap = true, silent = true })
