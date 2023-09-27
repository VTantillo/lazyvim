return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "JoosepAlviste/nvim-ts-context-commentstring",
      "RRethy/nvim-treesitter-endwise",
      "windwp/nvim-ts-autotag",
      "nvim-treesitter/nvim-treesitter-context",
    },
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {
          "astro",
          "css",
          "bash",
          "c",
          "dockerfile",
          "gitignore",
          "go",
          "gomod",
          "gosum",
          "gowork",
          "graphql",
          "html",
          "java",
          "javascript",
          "jq",
          "jsdoc",
          "json",
          "lua",
          "luadoc",
          "luap",
          "markdown",
          "markdown_inline",
          "python",
          "query",
          "regex",
          "rust",
          "sql",
          "toml",
          "tsx",
          "typescript",
          "vim",
          "vimdoc",
          "yaml",
        },
        auto_install = true,
        highlight = { enable = true, additional_vim_regex_highlighting = { "org", "markdown" } },
        indent = { enable = true, disable = { "python", "yaml" } },
        matchup = {
          enable = true,
        },
        endwise = {
          enable = true,
        },
        autotag = {
          enable = true,
          enable_close_on_slash = false,
          filetypes = {
            "html",
            "javascript",
            "typescript",
            "javascriptreact",
            "typescriptreact",
            "tsx",
            "jsx",
            "css",
            "lua",
            "xml",
            "markdown",
          },
        },
      })
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    enabled = false,
    config = function()
      local npairs = require("nvim-autopairs")
      npairs.setup({
        check_ts = true,
      })
    end,
  },
  {
    "altermo/ultimate-autopair.nvim",
    enabled = true,
    event = { "InsertEnter", "CmdlineEnter" },
    branch = "v0.6",
    opts = {},
  },
}
