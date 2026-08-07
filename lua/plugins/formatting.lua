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

        ["javascript"] = { "oxfmt", "prettier", "prettierd", stop_after_first = true },
        ["javascriptreact"] = { "oxfmt", "prettier", "prettierd", stop_after_first = true },
        ["typescript"] = { "oxfmt", "prettier", "prettierd", stop_after_first = true },
        ["typescriptreact"] = { "oxfmt", "prettier", "prettierd", stop_after_first = true },
        ["css"] = { "oxfmt", "prettier", "prettierd", stop_after_first = true },
        ["html"] = { "oxfmt", "prettier", "prettierd", stop_after_first = true },
        ["json"] = { "oxfmt", "prettier", "prettierd", stop_after_first = true },
        ["jsonc"] = { "oxfmt", "prettier", "prettierd", stop_after_first = true },
        ["yaml"] = { "oxfmt", "prettier", "prettierd", stop_after_first = true },
        ["markdown"] = { "oxfmt", "prettier", "prettierd", stop_after_first = true },
        ["markdown.mdx"] = { "oxfmt", "prettier", "prettierd", stop_after_first = true },
        ["graphql"] = { "oxfmt", "prettier", "prettierd", stop_after_first = true },

        -- ["javascript"] = { "oxfmt" },
        -- ["javascriptreact"] = { "oxfmt" },
        -- ["typescript"] = { "oxfmt" },
        -- ["typescriptreact"] = { "oxfmt" },
        -- ["css"] = { "oxfmt" },
        -- ["html"] = { "oxfmt" },
        -- ["json"] = { "oxfmt" },
        -- ["jsonc"] = { "oxfmt" },
        -- ["yaml"] = { "oxfmt" },
        -- ["markdown"] = { "oxfmt" },
        -- ["markdown.mdx"] = { "oxfmt" },
        -- ["graphql"] = { "oxfmt" },
      },
    },
  },
}
