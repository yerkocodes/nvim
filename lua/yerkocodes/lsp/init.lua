-- Configuración general de LSP
local lspconfig = require('lspconfig')

-- Configuración para TypeScript/JavaScript
lspconfig.ts_ls.setup({
    on_attach = require('yerkocodes.lsp.on_attach'),
    capabilities = require('yerkocodes.lsp.capabilities'),
    settings = {
        typescript = {
            inlayHints = {
                includeCompletionsWithSource = true,
            },
        },
    },
})

-- Configuración para HTML
lspconfig.html.setup({
    on_attach = require('yerkocodes.lsp.on_attach'),
    capabilities = require('yerkocodes.lsp.capabilities'),
})

-- Configuración para Java
lspconfig.jdtls.setup({
    on_attach = require('yerkocodes.lsp.on_attach'),
    capabilities = require('yerkocodes.lsp.capabilities'),
})

-- Configuración para Node.js
--lspconfig.nodejs.setup({
    --on_attach = require('yerkocodes.lsp.on_attach'),
    --capabilities = require('yerkocodes.lsp.capabilities'),
--})

-- Configuración para Angular
lspconfig.angularls.setup({
    on_attach = require('yerkocodes.lsp.on_attach'),
    capabilities = require('yerkocodes.lsp.capabilities'),
})
