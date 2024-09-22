return {
  {
    -- Nvimtree (File Explorer)
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      require("nvim-tree").setup {}
      vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    end,
  },
}


-- return {
--   {
--     -- Nvimtree (File Explorer)
--     "nvim-tree/nvim-tree.lua",
--     version = "*",
--     lazy = false,
--     dependencies = {
--       "nvim-tree/nvim-web-devicons",
--     },
--     config = function()
--       require("nvim-tree").setup {
--         view = {
--           width = 30,
--           side = 'left',
--         },
--         actions = {
--           open_file = {
--             quit_on_open = false,
--             resize_window = true,
--           },
--         },
--         -- Use this configuration for custom key mappings
--         on_attach = function(bufnr)
--           local api = require('nvim-tree.api')
--           local function opts(desc)
--             return { desc = 'NvimTree: ' .. desc, noremap = true, silent = true, buffer = bufnr }
--           end
--           -- Custom key mappings
--           vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
--           vim.keymap.set('n', 'v', api.node.open.vertical, opts('Open: Vertical Split'))
--           vim.keymap.set('n', 's', api.node.open.horizontal, opts('Open: Horizontal Split'))
--         end,
--       }
--       vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
--     end,
--   },
-- }
