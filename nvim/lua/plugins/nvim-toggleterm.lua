return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {},
    config = function()
      require("toggleterm").setup {}
      vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTerm<CR>', { noremap = true, silent = true })
    end
  }
}
