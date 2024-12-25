return {
  -- Plugin manager
  {'folke/lazy.nvim'},

  {'christoomey/vim-tmux-navigator'}, -- TMUX Navigator
  {'Yggdroot/indentLine'}, -- Lineas de indentación

  -- File explorer
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup({
        view = {
          side = 'left', -- Cambia a 'right' si prefieres el árbol a la derecha
          width = 30,
        },
        actions = {
          open_file = {
            quit_on_open = true,
          },
        },
        on_attach = function(bufnr)
          local api = require('nvim-tree.api')

          -- Función para facilitar la asignación de teclas
          local function opts(desc)
            return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
          end

          -- Mapeos personalizados
          vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Abrir archivo o expandir/cerrar carpeta'))
          vim.keymap.set('n', 'o', api.node.open.edit, opts('Abrir archivo o expandir/cerrar carpeta'))
          vim.keymap.set('n', 's', api.node.open.vertical, opts('Abrir en división vertical'))
          vim.keymap.set('n', 'i', api.node.open.horizontal, opts('Abrir en división horizontal'))
          vim.keymap.set('n', 'a', api.fs.create, opts('Crear archivo o carpeta'))
          vim.keymap.set('n', 'r', api.fs.rename, opts('Renombrar archivo o carpeta'))
          vim.keymap.set('n', 'd', api.fs.remove, opts('Eliminar archivo o carpeta'))
          vim.keymap.set('n', 'R', api.tree.reload, opts('Refrescar árbol'))
        end,
      })
    end,
  },

  -- Fuzzy finder and file/text search
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
      }
    },
    config = function()
      local telescope = require('telescope')
      telescope.setup({
        defaults = {
          file_ignore_patterns = {
            "node_modules",
            ".git",
          },
        },
        pickers = {
          find_files = {
            theme = "dropdown",
            hidden = true, -- Incluye archivos ocultos
          }
        }
      })
      telescope.load_extension('fzf')
    end,
  },

  -- Status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'wombat', -- Cambia 'gruvbox' por el nombre del tema que prefieras
          section_separators = '', -- Opcional: Configura separadores de sección
          component_separators = '', -- Opcional: Configura separadores de componentes
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = { 'filename' },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' },
        },
      })
    end,
  },

  -- Comment.nvim for easy code commenting
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any custom configurations here
    },
    lazy = false,
  },

  -- Theme
  {
    "wolverian/minimal",
    lazy = false,
    config = function()
      vim.cmd([[colorscheme minimal]])
    end,
  },

  {
    'lewis6991/gitsigns.nvim',
    lazy = false, -- Cargarlo inmediatamente
    config = function()
      require('gitsigns').setup({
        signs = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
        },
        watch_gitdir = {
          interval = 1000, -- Intervalo para actualizaciones
          follow_files = true,
        },
        current_line_blame = true, -- Mostrar el autor de la línea actual
        current_line_blame_opts = {
          delay = 100, -- Retraso antes de mostrar el blame
        },
      })
    end,
  }

}
