-- Configuración de nvim-cmp
local cmp = require('cmp')

cmp.setup({
    -- Configuración de fuentes
    sources = {
        { name = 'nvim_lsp' },
        { name = 'path' },
    },
    -- Configuración de mapping
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-1),
        ['<C-u>'] = cmp.mapping.scroll_docs(1),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
    },
    -- Configuración de opciones
    options = {
        layout = {
            width = '80%',
        },
    },
})
