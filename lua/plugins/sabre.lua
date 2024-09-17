return {
  "christoomey/vim-tmux-navigator",
  {
    "nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        ts_ls = {
          enabled = false,
        },
      },
    },
  },
}
