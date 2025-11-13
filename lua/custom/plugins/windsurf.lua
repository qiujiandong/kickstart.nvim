return {
  'Exafunction/windsurf.vim',
  event = 'BufEnter',
  init = function()
    vim.g.codeium_no_map_tab = true
  end,
  config = function()
    vim.keymap.set('i', '<C-g>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<C-x>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true, silent = true })
  end,
}
