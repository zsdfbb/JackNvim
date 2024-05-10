local packer = require("packer")

packer.startup({
    function(use)
        -- Packer 可以管理自己本身
        use 'wbthomason/packer.nvim'
        use 'nvim-tree/nvim-tree.lua'
        use 'nvim-lua/plenary.nvim'
        -- 依赖plenary.nvim
        use 'nvim-telescope/telescope.nvim'
        -- 语法高亮
        use 'folke/todo-comments.nvim'
        -- gruvbox 主题
        use 'morhetz/gruvbox'
        -- 标签
        use 'akinsho/bufferline.nvim'
        -- 代码补全 (fuzz, dict, lsp, path, snippet)
        use 'lukas-reineke/cmp-rg'
        use 'uga-rosa/cmp-dictionary'
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-path'
        use 'saadparwaiz1/cmp_luasnip'
        use 'L3MON4D3/LuaSnip'
        use 'hrsh7th/nvim-cmp'
        -- 代码分析
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

