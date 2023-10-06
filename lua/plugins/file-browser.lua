return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {

    "nvim-telescope/telescope-file-browser.nvim",
    keys = {
      {
        "<leader>e",
        ":Telescope file_browser path=%:p:h=%:p:h<cr>",
        desc = "Browse Files",
      },
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },
}
