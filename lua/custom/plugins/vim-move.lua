return {
  'matze/vim-move',
  init = function()
    -- disable automatic key maps
    vim.g.move_map_keys = 0
  end,
  config = function()
    vim.keymap.set('v', '<S-j>', '<Plug>MoveBlockDown', { silent = true })
    vim.keymap.set('v', '<S-k>', '<Plug>MoveBlockUp', { silent = true })
  end,
}
