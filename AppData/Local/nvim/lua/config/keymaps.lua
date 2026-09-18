local map = vim.keymap.set

-- Search highlight
map(
    "n",
    "<Esc><Esc>",
    "<cmd>nohlsearch<CR><Esc>",
    { silent = true }
)

-- Move by displayed lines
map(
    "n",
    "j",
    "gj",
    { noremap = true, silent = true }
)

map(
    "n",
    "k",
    "gk",
    { noremap = true, silent = true }
)

-- Exit insert mode
map(
    "i",
    "jj",
    "<Esc>",
    { noremap = true, silent = true }
)

-- Terminal mode
map(
    "t",
    "<Esc>",
    "<C-\\><C-n>",
    { noremap = true, silent = true }
)

map(
    "t",
    "jj",
    "<C-\\><C-n>",
    { noremap = true, silent = true }
)
