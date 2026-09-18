vim.cmd("syntax enable")

vim.opt.clipboard = "unnamedplus"

vim.opt.visualbell = false
vim.opt.errorbells = false

vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.autoread = true
vim.opt.hidden = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.showcmd = false
vim.opt.showmatch = true
vim.opt.laststatus = 2

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.wildmode = { "list", "longest" }

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.wrapscan = true
vim.opt.hlsearch = true

vim.opt.mouse = "a"
vim.opt.confirm = true

vim.opt.splitright = true

vim.opt.signcolumn = "yes"

vim.opt.termguicolors = true

vim.diagnostic.config({
    virtual_text = false,
})
