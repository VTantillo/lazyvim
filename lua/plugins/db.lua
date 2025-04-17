local sql_ft = { "sql", "mysql", "plsql" }

return {
  {
    "tpope/vim-dadbod",
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      { "kristijanhusak/vim-dadbod-completion", ft = sql_ft },
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
      vim.g.db_ui_save_location = "~/code/db"
      vim.g.db_ui_use_nvim_notify = true
    end,
  },
  { -- optional saghen/blink.cmp completion source
    "saghen/blink.cmp",
    opts = {
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
        per_filetype = {
          sql = { "snippets", "dadbod", "buffer" },
        },
        -- add vim-dadbod-completion to your completion providers
        providers = {
          dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
        },
      },
    },
  },
}
