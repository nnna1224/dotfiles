-- change leader keymap
vim.g.mapleader = " "

vim.keymap.set('n', '<Esc><Esc>', ':nohlsearch<CR><Esc>')
vim.keymap.set('n', 'j', 'gj', {noremap = true, silent=true})
vim.keymap.set('n', 'k', 'gk', {noremap = true, silent=true})
vim.keymap.set('n', '<C-h>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<C-l>', ':BufferLineCycleNext<CR>')
vim.keymap.set('i', 'jj', '<Esc>', {noremap = true, silent = true})
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>', {noremap = true, silent=true})
vim.keymap.set('t', 'jj', '<C-\\><C-n>', {noremap = true, silent = true})

-- key map to plugins
-- Oil
vim.keymap.set('n', '<leader>e', ':Oil --float<CR>', {noremap = true, silent=true})
-- DiffView
vim.keymap.set('n', '<leader>dv', ':DiffviewOpen<CR>', {noremap = true, silent=true})
vim.keymap.set('n', '<leader>dc', ':DiffviewClose<CR>', {noremap = true, silent=true})
-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
