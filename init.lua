-- ~/.config/nvim/init.lua

-- Cargar configuraciones
require("config.settings")  -- Configuraciones generales
require("config.keymaps")    -- Mapeo de teclas
require("config.lsp")        -- Configuración de LSP
require("config.cmp")        -- Configuración de nvim-cmp
require("config.theme")      -- Configuración del tema
require("plugins")           -- Gestión de plugins
require("config.lazy")
require("config.nvimtree")   -- Configuración de nvim-tree
require("config.lazy")       -- Configuración de lazy.nvim
