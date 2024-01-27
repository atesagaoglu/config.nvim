-- Lines Numbers --
vim.opt.number = true
vim.opt.relativenumber = true

-- Tab --
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true

-- Search --
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.cursorline = true

vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.clipboard:append("unnamedplus")
vim.opt.swapfile = false

vim.opt.scrolloff = 8

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.signcolumn = "auto:1-9"

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.mouse = ""
