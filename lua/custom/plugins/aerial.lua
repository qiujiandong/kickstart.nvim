return {
  'stevearc/aerial.nvim',
  config = function()
    require('aerial').setup()
    vim.keymap.set('n', '<leader>ta', '<cmd>AerialToggle!<CR>', { desc = '<T>oggle [A]erial' })
  end,
}
