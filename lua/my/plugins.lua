--Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    'lewis6991/impatient.nvim',

    --appearance
    'kyazdani42/nvim-web-devicons',
    {
        'shaunsingh/nord.nvim',
        config = function()
            vim.cmd('colorscheme nord')
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {'kyazdani42/nvim-web-devicons'},
        config = function()
            require('my.lualine')
        end,
    },
    {
        'romgrk/barbar.nvim',
        dependencies = {'kyazdani42/nvim-web-devicons'},
        config = function ()
            require('my.barbar')
        end
    },
    'dstein64/nvim-scrollview',

    --git
    {
        'lewis6991/gitsigns.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        tag = 'release',
        config = function ()
            require('my.gitsigns')
        end
    },

    'editorconfig/editorconfig-vim',
    'wellle/targets.vim',
    'tpope/vim-surround',
    'tpope/vim-eunuch',
    {
        'windwp/nvim-autopairs',
        config = function ()
            require('my.nvim-autopairs')
        end
    },
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },

    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'kyazdani42/nvim-web-devicons'
        }
    },
    {'nvim-telescope/telescope-fzf-native.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim'
        },
        run = 'make'
    },
    {
        'nvim-telescope/telescope-frecency.nvim',
        config = function()
            require'telescope'.load_extension('frecency')
        end,
        dependencies = {'tami5/sqlite.lua'}
    };

    {
        'folke/which-key.nvim',
        config = function()
            require('which-key').setup {}
        end
    },

    --language support
    'williamboman/mason.nvim',

    --lsp
    'tjdevries/nlua.nvim',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'onsails/lspkind-nvim',
    'ray-x/lsp_signature.nvim',
    {
        'folke/trouble.nvim',
        dependencies = {'kyazdani42/nvim-web-devicons'}
    },

    --snippets
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',

    --language specific
    'simrat39/rust-tools.nvim',
    'rust-lang/rust.vim',
})
