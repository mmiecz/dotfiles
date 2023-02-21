return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use { 'andersevenrud/nordic.nvim',
        config = function()
            -- The table used in this example contains the default settings.
            -- Modify or remove these to your liking (this also applies to alternatives below):
            require('nordic').colorscheme({
                -- Options: 'none', 'underline', 'undercurl'
                underline_option = 'underline',
                italic = true,
                italic_comments = true,
                minimal_mode = false,
                alternate_backgrounds = false,
                custom_colors = function(c, s, cs)
                    return {}
                end
            })
        end
    }
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
            }
        end
    }
    use({ 'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" } })
    use {
        'MrcJkb/haskell-tools.nvim',
        requires = {
            'neovim/nvim-lspconfig',
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim', -- optional
        },
    }
    use('Olical/conjure')
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use('phaazon/hop.nvim')
    use { 'ms-jpq/coq_nvim' }
end)
