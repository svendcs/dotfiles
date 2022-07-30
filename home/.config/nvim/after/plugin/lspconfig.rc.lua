local lspconfig = require('lspconfig')
local coq = require('coq')

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
  vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()")

  -- local opts = { noremap = true, silent = true }

  -- Key mappings
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
  -- buf_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  -- keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
  -- keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
  -- keymap("n", "[e", "<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<CR>", opts)
  -- keymap("n", "]e", "<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<CR>", opts)

  -- -- Whichkey
  -- local keymap_l = {
  --   l = {
  --     name = "Code",
  --     r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
  --     a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
  --     d = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Line Diagnostics" },
  --     i = { "<cmd>LspInfo<CR>", "Lsp Info" },
  --   },
  -- }
  -- if client.resolved_capabilities.document_formatting then
  --   keymap_l.l.f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format Document" }
  -- end

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
  vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { buffer = 0 })
  vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, { buffer = 0 })
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })

  vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = 0 })
  vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, { buffer = 0 })

  -- local keymap_g = {
  --   name = "Goto",
  --   d = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
  --   D = { "<Cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
  --   s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature Help" },
  --   I = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Goto Implementation" },
  --   t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Goto Type Definition" },
  -- }
  -- whichkey.register(keymap_l, { buffer = bufnr, prefix = "<leader>" })
  -- whichkey.register(keymap_g, { buffer = bufnr, prefix = "g" })
end

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = coq.lsp_ensure_capabilities()
}

-- lspconfig.clangd.setup()
vim.cmd([[COQnow]])

