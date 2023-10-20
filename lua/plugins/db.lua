return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  keys = {
    { "<leader>Do", "<cmd>:DBUIToggle<CR>", desc = "DB UI Toggle" },
    { "<leader>Da", "<cmd>:DBUIAddConnection<CR>", desc = "DB add connection" },
    { "<leader>Df", "<cmd>:DBUIFindBuffer<CR>", desc = "DB - Find Buffer" },
    { "<leader>Di", "<cmd>:DBUILastQueryInfo<CR>", desc = "DB last query info" },
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_save_location = "~/.config/db_ui"
  end,
}
