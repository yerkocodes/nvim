-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Finder files
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorscheme
   use {'kdheepak/monochrome.nvim', config = function()
	  vim.cmd 'colorscheme monochrome'
   end}

  --use {'jaredgorski/fogbell.vim', config = function()
	  --vim.cmd 'colorscheme fogbell_light'
  --end}

  -- Treesitter
  --Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  -- ******** LSP **********
  -- Plugin para gestión de LSP
  use 'neovim/nvim-lspconfig'
  -- Plugin para instalar LSPs
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  -- Plugin para autocompletado (necesario para las capacidades)
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  -- ******** LSP **********

  -- Diagnosticos
  use 'folke/trouble.nvim'

end)
