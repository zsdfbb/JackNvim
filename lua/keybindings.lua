-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- 常用快捷键
-- Ctrl + w + hjkl  窗口之间跳转

-- 快捷键文档 :map

-- Packer 插件 :PackerSync

-- 取消 s 默认功能
map("n", "s", "", opt)
-- window 分屏快捷键 window split
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前 window close
map("n", "sc", "<C-w>c", opt)
-- 关闭其他 window close other
map("n", "so", "<C-w>o", opt)

-- 上下滚动浏览
map("n", "<C-j>", "10j", opt)
map("n", "<C-k>", "10k", opt)

-- 左右比例控制
map("n", "<C-Left>", ":vertical resize +2<CR>", opt)
map("n", "<C-Right>", ":vertical resize -2<CR>", opt)
-- 上下比例
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)

-- 插件 nvimtree 快捷键, file tree
map("n", "ft", ":NvimTreeToggle<CR>", opt)
map("n", "ff", ":NvimTreeFindFile<CR>", opt)

-- Telescope
-- 查找文件
map("n", "pf", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "pg", ":Telescope live_grep<CR>", opt)
-- 查找当前单词
map('n', 'pc', '<cmd>lua require(\'telescope.builtin\').grep_string({search = vim.fn.expand("<cword>")})<cr>', {})

-- bufferline
-- close buffer :bd OR :bdelete
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- rename
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
-- code action
-- map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
-- go xx
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
map("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)

-- display diagnostic error information
map("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
-- diagnostic
-- map("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
-- map("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
-- map("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
