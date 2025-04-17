vim.o.colorcolumn = "80"
vim.o.scrolloff = 16
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true
vim.o.conceallevel = 0
vim.o.termguicolors = true

vim.g.lazyvim_python_lsp = "basedpyright"
