require("toggleterm").setup({
  open_mapping = [[<C-t>]],
  shade_terminals = true,
  direction = "float",
  shell = "bash",
  float_opts = {
    border = "curved",
  },
  start_in_insert = true,
  persist_size = true,
})
