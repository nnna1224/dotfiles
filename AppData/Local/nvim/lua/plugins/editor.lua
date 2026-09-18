return {
    -- File explorer
    {
        "nvim-mini/mini.files",

        -- Load on wake up to process `nvim .`
        lazy = false,

        opts = {
            options = {
                -- Open with mini.files when `nvim .` or `:edit directory`
                use_as_default_explorer = true,

                -- Move to trash of mini.files when delete
                permanent_delete = false,
            },

            windows = {
                -- Preview file under cursor
                preview = true,

                -- Number of hierarchy levels to display at the same time
                max_number = 4,

                width_focus = 40,
                width_nofocus = 20,
                width_preview = 50,
            },
        },

        keys = {
            {
                "<leader>e",
                function()
                    local MiniFiles = require("mini.files")
                    local path = vim.api.nvim_buf_get_name(0)

                    if path == "" then
                        path = vim.uv.cwd()
                    end

                    MiniFiles.open(path, false)
                end,
                desc = "Open file explorer",
            },

            {
                "<leader>E",
                function()
                    require("mini.files").open(
                        vim.uv.cwd(),
                        false
                    )
                end,
                desc = "Open file explorer at cwd",
            },
        },
    },

    -- Telescope
    {
        "nvim-telescope/telescope.nvim",

        cmd = "Telescope",

        dependencies = {
            "nvim-lua/plenary.nvim",
        },

        keys = {
            {
                "<leader>ff",
                function()
                    require("telescope.builtin")
                        .find_files()
                end,
                desc = "Find files",
            },

            {
                "<leader>fg",
                function()
                    require("telescope.builtin")
                        .live_grep()
                end,
                desc = "Live grep",
            },

            {
                "<leader>fb",
                function()
                    require("telescope.builtin")
                        .buffers()
                end,
                desc = "Buffers",
            },

            {
                "<leader>fh",
                function()
                    require("telescope.builtin")
                        .help_tags()
                end,
                desc = "Help tags",
            },
        },

        opts = {},
    },

    -- Git signs
    {
        "lewis6991/gitsigns.nvim",

        event = {
            "BufReadPre",
            "BufNewFile",
        },

        opts = {},
    },
}
