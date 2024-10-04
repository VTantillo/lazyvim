return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "prettierd")
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["python"] = { "ruff_format", "ruff_fix", "ruff_organize_imports" },
        ["javascript"] = { "prettierd", "prettier", stop_after_first = true },
        ["javascriptreact"] = { "prettierd", "prettier", stop_after_first = true },
        ["typescript"] = { "prettierd", "prettier", stop_after_first = true },
        ["typescriptreact"] = { "prettierd", "prettier", stop_after_first = true },
        ["css"] = { "prettierd", "prettier", stop_after_first = true },
        ["html"] = { "prettierd", "prettier", stop_after_first = true },
        ["json"] = { "prettierd", "prettier", stop_after_first = true },
        ["jsonc"] = { "prettierd", "prettier", stop_after_first = true },
        ["yaml"] = { "prettierd", "prettier", stop_after_first = true },
        ["markdown"] = { "prettierd", "prettier", stop_after_first = true },
        ["markdown.mdx"] = { "prettierd", "prettier", stop_after_first = true },
        ["graphql"] = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  },
}
