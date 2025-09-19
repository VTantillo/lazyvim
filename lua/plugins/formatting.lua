return {
  {
    "mason-org/mason.nvim",
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
        ["javascript"] = { "prettier", "prettierd", stop_after_first = true },
        ["javascriptreact"] = { "prettier", "prettierd", stop_after_first = true },
        ["typescript"] = { "prettier", "prettierd", stop_after_first = true },
        ["typescriptreact"] = { "prettier", "prettierd", stop_after_first = true },
        ["css"] = { "prettier", "prettierd", stop_after_first = true },
        ["html"] = { "prettier", "prettierd", stop_after_first = true },
        ["json"] = { "prettier", "prettierd", stop_after_first = true },
        ["jsonc"] = { "prettier", "prettierd", stop_after_first = true },
        ["yaml"] = { "prettier", "prettierd", stop_after_first = true },
        ["markdown"] = { "prettier", "prettierd", stop_after_first = true },
        ["markdown.mdx"] = { "prettier", "prettierd", stop_after_first = true },
        ["graphql"] = { "prettier", "prettierd", stop_after_first = true },
      },
    },
  },
}
