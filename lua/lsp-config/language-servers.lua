local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<leader>fl', vim.lsp.buf.formatting, bufopts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
require('lspconfig')['html'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
require('lspconfig')['cssls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
require('lspconfig')['sumneko_lua'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
require('lspconfig')['emmet_ls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    filetypes = { "html", "css", "sass", "scss", "less" }
}
