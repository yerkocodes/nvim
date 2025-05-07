-- Configuración de Mason
require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

-- Configuración para instalar LSPs automáticamente
require('mason-lspconfig').setup({
    automatic_installation = true,
})

-- Configurar los comandos de LSP
vim.api.nvim_create_user_command(
    'LspInstall',
    function(opt)
        local lspconfig = require('lspconfig')
        local server_name = opt.args
        if lspconfig[server_name] then
            lspconfig[server_name].setup {}
            print("Instalando LSP: " .. server_name)
        else
            print("LSP no encontrado: " .. server_name)
        end
    end,
    { nargs = 1, desc = "Nombre del LSP a instalar" }
)
