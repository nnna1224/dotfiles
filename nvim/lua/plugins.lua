vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- color theme
    use { "catppuccin/nvim", as = "catppuccin" }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- nvim-cmp
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
        }
    }

    -- filer
    use {
        'stevearc/oil.nvim',
        config = function()
          require("oil").setup()
        end
    }

    -- Comment support
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- git difference view
    use {
        'sindrets/diffview.nvim',
        config = function()
            require('diffview').setup()
        end
    }

    -- telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- terminal tool
    use {
        "akinsho/toggleterm.nvim", tag = '*',
        config = function()
            require("toggleterm").setup()
        end
    }

    -- arg hint
    use { "ray-x/lsp_signature.nvim",
        event = "LspAttach",
        config = function()
            require("lsp_signature").setup({
                bind = true,
                floating_window = true,
                hint_enable = true,
            })
        end,
    }
end)
