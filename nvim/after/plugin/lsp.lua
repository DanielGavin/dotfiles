local lsp = require('lsp-zero').preset({})


require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)


local capabilities = require('cmp_nvim_lsp').default_capabilities()


require('lspconfig').ols.setup({
  on_attach = lsp.on_attach,
  capabilities = capabilities,
  filetypes  = { "odin" }
})

require('lsp_signature').setup({})

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.format_on_save({
  servers = {
    ['ols'] = {'odin'},
  }
})


lsp.setup()
