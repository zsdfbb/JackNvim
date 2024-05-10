-- 基础设置
require('basic')

-- 按键映射
require('keybindings')

-- 主题设置
require('colorscheme')

-- Packer 插件管理
require('plugins')

-- 插件配置
require("highlight")
require("plugin_config.nvim_tree")
require("plugin_config.telescope")
require("plugin_config.bufferline")
require("plugin_config.cmp")
require("plugin_config.todo_commment")

-- LSP
-- require("lsp.setup")
