vim.filetype.add({
  extension = {
    ["http"] = "http",
  },
})

return {
  {
    "mistweaverco/kulala.nvim",
    config = function()
      local kulala = require("kulala")
      -- Setup is required, even if you don't pass any options
      kulala.setup({
        formatters = {
          json = { "jq", "." },
        },
      })

      vim.keymap.set("n", "<leader>kr", function()
        kulala.run()
      end)
      vim.keymap.set("n", "<leader>ks", function()
        kulala.scratchpad()
      end)
    end,
  },
}
