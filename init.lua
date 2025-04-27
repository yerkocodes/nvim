require("config.lazy")

-- Configuración básica de nvim-tree
require("nvim-tree").setup({
  view = {
    width = 30,  -- ancho de la ventana
  },
  filters = {
    dotfiles = false,  -- mostrar archivos ocultos
  },
})
