return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["python"] = { "black", "ruff_format", "ruff_fix" },
      },
    },
  },
}
