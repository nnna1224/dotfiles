local group = vim.api.nvim_create_augroup(
    "user_config",
    { clear = true }
)

vim.api.nvim_create_autocmd(
    "FileType",
    {
        group = group,
        callback = function()
            vim.opt_local.formatoptions:remove("c")
        end,
    }
)
