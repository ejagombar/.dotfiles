local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local pluginsa = {
    'nvim-treesitter/nvim-treesitter',
    'theprimeagen/harpoon',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'p00f/clangd_extensions.nvim',
    'numToStr/Comment.nvim',
    'nvim-lualine/lualine.nvim',
    'nvim-tree/nvim-web-devicons',
    'lewis6991/gitsigns.nvim',
    'windwp/nvim-autopairs',
    'windwp/nvim-ts-autotag',
    'aserowy/tmux.nvim',
    'sakhnik/nvim-gdb',
    "zbirenbaum/copilot.lua",
    {
        'jose-elias-alvarez/null-ls.nvim',
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim', },
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
    },
}

local plugins = "plugins2"
local opts = {
    change_detection = {
        notify = false,
    }
}

require("lazy").setup(plugins, opts)

