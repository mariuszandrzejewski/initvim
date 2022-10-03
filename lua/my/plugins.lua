return require('packer').startup({function(use)
    --plugin manager
    use 'wbthomason/packer.nvim'

    use {
        'lewis6991/impatient.nvim',
        config = function()
            require('impatient')
        end
    }

    use {
        "antoinemadec/FixCursorHold.nvim",
        config = function()
            vim.g.curshold_updatime = 100
        end,
    }

    --appearance
    use {
        'shaunsingh/nord.nvim',
        config = function()
            vim.cmd('colorscheme nord')
        end,
    }


    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function()
            require('my.lualine')
        end,
    }

    use "kyazdani42/nvim-web-devicons"
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function ()
            require('my.barbar')
        end
    }
    use 'dstein64/nvim-scrollview'

    --git
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        tag = 'release',
        config = function () 
            require('my.gitsigns')
        end
    }

    use 'editorconfig/editorconfig-vim'
    use 'wellle/targets.vim'
    use 'tpope/vim-surround'
    use 'tpope/vim-eunuch'
    use {
        'windwp/nvim-autopairs',
        config = function ()
            require('my.nvim-autopairs')
        end
    }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'kyazdani42/nvim-web-devicons'}
        }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim',
        requires = {
            'nvim-telescope/telescope.nvim'
        },
        run = 'make'
    }
    use {
        "nvim-telescope/telescope-frecency.nvim",
        config = function()
            require"telescope".load_extension("frecency")
        end,
        requires = {"tami5/sqlite.lua"}
    }

    use {
        'folke/which-key.nvim',
        config = function()
            require('which-key').setup {}
        end
    }

    --language support
    use {'williamboman/mason.nvim'}

    --lsp
    use {'williamboman/mason-lspconfig.nvim', requires = 'williamboman/mason.nvim'}
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'onsails/lspkind-nvim'
    use 'ray-x/lsp_signature.nvim'
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    --snippets
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    --language specific
    use 'simrat39/rust-tools.nvim'
    use 'rust-lang/rust.vim'
end,
config = {
    --floating window
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
    }
}})
