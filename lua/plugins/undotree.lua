return {
  "mbbill/undotree",
  config = function()
    vim.keymap.set("n", "<leader>su", vim.cmd.UndotreeToggle, { desc = "Show Undotree" })
  end,
}
