-- ~/.config/nvim/lua/config/options.lua
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ~/.config/nvim/lua/config/keymaps.lua
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Configuraciones de guardado
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Guardar archivo" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Cerrar ventana" })
map("n", "<leader>wq", "<cmd>wq<cr>", { desc = "Guardar y cerrar" })

map("n", "<C-s>", "<cmd>w<cr>", { desc = "Guardar archivo" })
map("i", "<C-s>", "<esc><cmd>w<cr>a", { desc = "Guardar archivo" })

-- Copiar en portapapeles, es necesario con xclip instalado
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copiar al portapapeles del sistema" })
