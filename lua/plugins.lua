return {
    -- Gestión de plugins
    "folke/lazy.nvim",

    -- LSP y Desarrollo
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "folke/neodev.nvim",
    "tamago324/nlsp-settings.nvim",
    "jose-elias-alvarez/null-ls.nvim",
    "b0o/schemastore.nvim",
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",

    -- Autocompletado y Snippets
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "saadparwaiz1/cmp_luasnip",
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",

    -- Interfaz y UX
    "goolord/alpha-nvim",
    "akinsho/bufferline.nvim",
    "nvim-lualine/lualine.nvim",
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons",
    "lukas-reineke/indent-blankline.nvim",
    "folke/which-key.nvim",
    "RRethy/vim-illuminate",

    -- Temas
    --"navarasu/onedark.nvim",
    --"folke/tokyonight.nvim",
    --"lunarvim/colorschemes",
    --"kdheepak/monochrome.nvim",
    --"jaredgorski/Mies.vim",
    {
      "jaredgorski/Mies.vim",
      lazy = false,
      priority = 1000,
      config = function()
        vim.o.background = "light"
        vim.cmd("colorscheme mies")  -- Aplicar aquí directamente
      end
    },

    -- Productividad
    "numToStr/Comment.nvim",
    "windwp/nvim-autopairs",
    "nvim-treesitter/nvim-treesitter",
    "JoosepAlviste/nvim-ts-context-commentstring",
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
    "akinsho/toggleterm.nvim",
    "ahmedkhalf/project.nvim",
    -- "tamago324/lir.nvim",
    "kyazdani42/nvim-tree.lua",

    -- Rendimiento
    "LunarVim/bigfile.nvim",

    -- Git
    "lewis6991/gitsigns.nvim",

    -- Utilidades
    "nvim-lua/plenary.nvim",
    "Tastyep/structlog.nvim",

  "folke/neodev.nvim",
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
}
