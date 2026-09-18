return {
    -- Colorscheme
    {
        "catppuccin/nvim",
        name = "catppuccin",

        lazy = false,
        priority = 1000,

        opts = {
            flavour = "mocha",
            transparent_background = true,
        },

        config = function(_, opts)
            require("catppuccin").setup(opts)

            vim.cmd.colorscheme("catppuccin")

            vim.cmd('highlight LineNr guifg=#707070')
            vim.cmd('highlight Pmenu guibg=#303030')
        end,
    },

    -- Statusline
    {
        "nvim-lualine/lualine.nvim",

        event = "VeryLazy",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        opts = {
            options = {
                theme = "auto",
            },
        },
    },

    -- Buffer tabs
    {
        "akinsho/bufferline.nvim",

        event = "VeryLazy",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        keys = {
            {
                "<C-h>",
                "<cmd>BufferLineCyclePrev<CR>",
                desc = "Previous buffer",
            },
            {
                "<C-l>",
                "<cmd>BufferLineCycleNext<CR>",
                desc = "Next buffer",
            },
        },

        opts = {
            options = {
                diagnostics = "nvim_lsp",
            },
        },
    },
}
