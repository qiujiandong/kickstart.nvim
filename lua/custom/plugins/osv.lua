return {
  'jbyuki/one-small-step-for-vimkind',
  config = function()
    vim.keymap.set(
      'n',
      '<leader>ns',
      '<cmd>lua require("osv").launch({port = 8086})<CR>',
      { noremap = true, silent = true, desc = '[N]vim start OSV [S]erver' }
    )
    vim.keymap.set(
      'n',
      '<leader>nx',
      '<cmd>lua require("osv").stop(); vim.notify("OSV server stopped", vim.log.levels.INFO)<CR>',
      { noremap = true, silent = true, desc = '[N]vim stop OSV [S]erver' }
    )
  end,
}
