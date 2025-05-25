-- Setup Mason
require("mason").setup()

-- lsp config
require("mason-lspconfig").setup({
    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup {
                capabilities = require("cmp_nvim_lsp").default_capabilities(),
            }
        end,
    }
})
