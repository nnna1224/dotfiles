require('plugins')
require('keymap')
require("plugin-config.lsp_cfg")
require("plugin-config.cmp_cfg")
require("plugin-config.toggleterm_cfg")

vim.cmd('syntax enable')
vim.opt.clipboard = 'unnamedplus'
vim.opt.visualbell = false
vim.opt.errorbells = false
vim.opt.fileencoding = 'utf-8'
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showcmd = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.formatoptions:remove('c')
vim.opt.showmatch = true
vim.opt.laststatus = 2
vim.opt.wildmode = { 'list', 'longest' }
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.wrapscan = true
vim.opt.hlsearch = true
vim.opt.mouse = 'a'
vim.opt.confirm = true
vim.opt.splitright = true
vim.opt.signcolumn = "yes"

require('catppuccin').setup({
    flavour = "mocha",
    transparent_background = true,
})

vim.cmd('colorscheme catppuccin')
vim.opt.termguicolors = true
vim.cmd('highlight LineNr guifg=#707070')
vim.cmd('highlight Pmenu guibg=#303030')

require('lualine').setup{
    options = {
        icons_enabled = false,
        theme = 'catppuccin',
    },
}

require("bufferline").setup{
  options = {
    show_buffer_close_icons = false,
    show_close_icon = false,
    diagnostics = "nvim_lsp",
  }
}
