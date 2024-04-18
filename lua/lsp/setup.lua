-- :h mason-default-settings
require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	-- 确保安装，根据需要填写
	-- 在这里查找server名字 ":h lspconfig-all"
	ensure_installed = {
		'lua_ls',
		'rust_analyzer',
		'clangd',
		'pylsp',
	},
})

-- lspconfig 配置
-- :h lspconfig-all
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup {}
lspconfig.clangd.setup {}
lspconfig.rust_analyzer.setup {
	settings = {
		['rust-analyzer'] = {
			diagnostics = {
				enable = false,
			}
		}
	}
}

lspconfig.pylsp.setup {}
lspconfig.jsonls.setup {}

-- bash 的lsp配置，根据文件名启动server
vim.api.nvim_create_autocmd('FileType', {
	pattern = 'sh',
	callback = function()
		vim.lsp.start({
			name = 'bash-language-server',
			cmd = { 'bash-language-server', 'start' },
		})
	end,
})

