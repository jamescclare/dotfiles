--s This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate' }
    }

    use 'nvim-treesitter/playground'

    use 'nvim-treesitter/nvim-treesitter-context'

    use 'mbbill/undotree'

    use 'tpope/vim-fugitive'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- uncomment these if you want to manage lsp servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- lsp support
            {'neovim/nvim-lspconfig'},
            -- autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'l3mon4d3/luasnip'},
        }
    }

    use {
        'mofiqul/dracula.nvim',
        as = 'dracula',
    }

    use {
        'folke/tokyonight.nvim',
        as = 'tokyonight',
    }

    use {
        'nlknguyen/papercolor-theme',
        as = 'papercolor',
    }

    use 'goolord/alpha-nvim'

    use 'ThePrimeagen/vim-be-good'
end)
