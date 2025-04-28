-- Configuración básica de nvim-tree
require("nvim-tree").setup({
  view = {
    width = 30,  -- ancho de la ventana
  },
  filters = {
    dotfiles = false,  -- mostrar archivos ocultos
  },
  actions = {
    open_file = {
      quit_on_open = true,  -- Cierra NvimTree al abrir un archivo
      window_picker = {
        enable = false,     -- Opcional: deshabilita la selección de ventana
      },
    },
  },
})
