local lspconfig = require('lspconfig')
local coq = require('coq')

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
  vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()")

  local opts = { noremap = true, silent = true, buffer = 0 }

  -- Key mappings
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
  vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { buffer = 0 })
  vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, { buffer = 0 })
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })

  vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = 0 })
  vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, { buffer = 0 })
end

opts = {
  on_attach = on_attach,
  capabilities = coq.lsp_ensure_capabilities()
}

lspconfig.clangd.setup(opts)

