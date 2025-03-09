return {
  'sindrets/diffview.nvim',
  config = function()
    require('diffview').setup {
      enhanced_diff_hl = true,
    }
    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', '<leader>do', ':DiffviewOpen<CR>', opts)
    vim.keymap.set('n', '<leader>dc', ':DiffviewClose<CR>', opts)
    vim.keymap.set('n', '<leader>dh', ':DiffviewFileHistory %<CR>', opts)
    vim.keymap.set('n', '<leader>dl', ':DiffviewLog<CR>', opts)
    vim.keymap.set('n', '<leader>dr', ':DiffviewRefresh<CR>', opts)
  end,
}
