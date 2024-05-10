local cmp = require("cmp")

cmp.setup {
    snippet = {
        -- snippet luasnip代码补全
        expand = function(args)
            -- For `vsnip` users.
            require'luasnip'.lsp_expand(args.body)
        end,
    },
    -- 补全的来源
    -- 参考： https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources
    sources = {
        {
            -- 使用ripgrep的fuzz模糊补全
            name = "rg",
            -- Try it when you feel cmp performance is poor
            -- keyword_length = 3
        },
        {
            -- cmp-dictionary 补全单词
            -- 使用本地的词典补全
            name = "dictionary",
            keyword_length = 2,
        },
        {
            -- cmp-path 补全文件路径
            name = "path"
        },
        {
            -- snippet luasnip代码补全
            name = 'luasnip',
            option = { use_show_condition = true }
        },
    },
    -- 快捷键设置
    mapping = {
        ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
        -- 取消
        ["<A-,>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close()
        }),
        -- 上下移动
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        -- 确认
        ["<CR>"] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace
        }),
    }
}

-- : 命令行模式中使用 path 源.
cmp.setup.cmdline(":", {
    sources = cmp.config.sources({
        { name = "path" },
    })
})

-- 输入模式单词补全
local dict = {
	  ["*"] = { "~/.config/nvim/dict/20k.txt" },
}
require("cmp_dictionary").setup({
	  paths = dict["*"],
	  exact_length = 2,
	  first_case_insensitive = true,
	})


-- 为luasnip准备代码片段
require("luasnip.loaders.from_vscode").lazy_load({
    paths = { "~/.config/nvim/snip/friendly-snippets" }
})

