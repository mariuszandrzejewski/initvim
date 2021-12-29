
return require('packer').startup({function()
    --plugin manager
    use 'wbthomason/packer.nvim'

    --appearance
    use 'shaunsingh/nord.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    use 'dstein64/nvim-scrollview'

    --git
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        tag = 'release'
    }
    
    use 'wellle/targets.vim'
    use 'tpope/vim-surround'
    use 'tpope/vim-eunuch'
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
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {}
        end
    }

    --language support
    
    --lsp
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'onsails/lspkind-nvim'
    
    --snippets
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
end,
config = {
    --floating window
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
    }
}})
