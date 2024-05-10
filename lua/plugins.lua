local packer = require("packer")

packer.startup({
    function(use)
        -- Packer 可以管理自己本身
        -- use 'zsdfbb/packer.nvim'
        use 'wbthomason/packer.nvim'
        -- use 'zsdfbb/nvim-tree.lua'
        use 'nvim-tree/nvim-tree.lua'
        -- use 'zsdfbb/plenary.nvim'
        use 'nvim-lua/plenary.nvim'
        -- 依赖plenary.nvim
        -- use 'zsdfbb/telescope.nvim'
        use 'nvim-telescope/telescope.nvim'
        -- 语法高亮
        -- use 'zsdfbb/todo-comments.nvim'
        use 'folke/todo-comments.nvim'
        -- gruvbox 主题
        -- use 'zsdfbb/gruvbox'
        use 'morhetz/gruvbox'
        -- 标签
        -- use 'zsdfbb/bufferline.nvim'
        use 'akinsho/bufferline.nvim'
        -- 代码补全 (fuzz, dict, lsp, path, snippet)
        -- use 'zsdfbb/cmp-rg'
        use 'lukas-reineke/cmp-rg'
        -- use 'zsdfbb/cmp-dictionary'
        use 'uga-rosa/cmp-dictionary'
        -- use 'zsdfbb/cmp-nvim-lsp'
        use 'hrsh7th/cmp-nvim-lsp'
        -- use 'zsdfbb/cmp-path'
        use 'hrsh7th/cmp-path'
        -- use 'zsdfbb/cmp_luasnip'
        use 'saadparwaiz1/cmp_luasnip'
        -- use 'zsdfbb/LuaSnip'
        use 'L3MON4D3/LuaSnip'
        -- use 'zsdfbb/nvim-cmp'
        use 'hrsh7th/nvim-cmp'
        -- 代码分析
        -- use 'zsdfbb/nvim-lspconfig'
        use 'neovim/nvim-lspconfig'
        -- use 'zsdfbb/mason.nvim'
        use 'williamboman/mason.nvim'
        -- use 'zsdfbb/mason-lspconfig.nvim'
        use 'williamboman/mason-lspconfig.nvim'
    end,
    config = {
        -- 并发数限制
        max_jobs = 8,
        -- 自定义源
        git = {
            default_url_format = "https://github.com/%s",
        },
        display = {
            open_fn = function()
                return require("packer.util").float({ border = "single" })
            end,
        },
    },
})

