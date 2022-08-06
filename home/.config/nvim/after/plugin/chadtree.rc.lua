local chadtree_settings = {
  ["options.follow"] = true,
  ["theme.icon_glyph_set"] = "ascii",
  ["keymap.v_split"] = {"<C-V>"},
  ["keymap.h_split"] = {"<C-S>"},
  ["keymap.select"] = {"<Space>"},
  ["keymap.cut"] = {"p"},
}

vim.api.nvim_set_var("chadtree_settings", chadtree_settings)
