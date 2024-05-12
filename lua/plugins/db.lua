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

      vim.api.nvim_create_autocmd("FileType", {
        pattern = sql_ft,
        callback = function()
          ---@diagnostic disable-next-line: missing-fields
          local cmp = require("cmp")
          local global_sources = cmp.get_config().sources
          local buffer_sources = {}

          -- add globally defined sources (see separate nvim-cmp config)
          -- this makes e.g. luasnip snippets available since luasnip is configured globally
          if global_sources then
            for _, source in ipairs(global_sources) do
              table.insert(buffer_sources, { name = source.name })
            end
          end

          -- add vim-dadbod-completion source
          table.insert(buffer_sources, { name = "vim-dadbod-completion" })

          -- update sources for the current buffer
          cmp.setup.buffer({ sources = buffer_sources })
        end,
      })
    end,
  },
}
