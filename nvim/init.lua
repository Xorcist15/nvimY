require("config.lazy")

-- tab settings
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.number = true

-- clipboard support
vim.opt.clipboard = "unnamedplus"

-- Copy selection to system clipboard
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent })

-- Paste from system clipboarhd
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true })
