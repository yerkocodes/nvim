-- Configuración compartida para LSPs
local on_attach = function(client, bufnr)
    -- Configuración de keymaps
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-p>', '<cmd>lua vim.lsp.buf.peek_definition()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-r>', '<cmd>lua vim.lsp.buf.references()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-d>', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.rename()<CR>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>lf', '<cmd>lua vim.lsp.buf.format()<CR>', bufopts)
    return on_attach
end

return on_attach
