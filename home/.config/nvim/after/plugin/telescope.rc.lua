telescope = require('telescope')
actions = require('telescope.actions')

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-s>"] = actions.select_horizontal,
      }
    }
  },
})

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>i", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>o", ":Telescope lsp_dynamic_workspace_symbols<CR>", opts)
vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", opts)
