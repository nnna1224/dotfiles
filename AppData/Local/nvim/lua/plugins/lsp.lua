return {
    -- LSP + Mason
    {
        "mason-org/mason-lspconfig.nvim",

        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {},
            },

            "neovim/nvim-lspconfig",

            "hrsh7th/cmp-nvim-lsp",
        },

        opts = {
            ensure_installed = {
                -- Write here that is needed
                --
                -- "lua_ls",
                -- "basedpyright",
                -- "clangd",
                -- "rust_analyzer",
            },
        },

        config = function(_, opts)
            local capabilities =
                require("cmp_nvim_lsp")
                    .default_capabilities()

            -- Add nvim-cmp capability to all LSP
            vim.lsp.config("*", {
                capabilities = capabilities,
            })

            require("mason-lspconfig")
                .setup(opts)
        end,
    },

    -- Inline diagnostics
    {
        "rachartier/tiny-inline-diagnostic.nvim",

        event = "LspAttach",

        priority = 1000,

        opts = {},
    },
}
