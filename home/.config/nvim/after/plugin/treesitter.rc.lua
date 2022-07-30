local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "cpp",
    "go",
    "json",
    "html",
  },
}

