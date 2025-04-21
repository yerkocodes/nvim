-- Configurar Lazy.nvim (instalación automática)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Cargar configuraciones básicas
require('core.options')
require('core.keymaps')

-- Configurar e inicializar plugins
require("lazy").setup("plugins.init")
