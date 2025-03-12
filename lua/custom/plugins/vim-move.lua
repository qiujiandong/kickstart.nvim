return {
  'matze/vim-move',
  keys = {
    { '<S-j>', '<Plug>MoveBlockDown', mode = 'v' },
    { '<S-k>', '<Plug>MoveBlockUp', mode = 'v' },
    { '<S-h>', '<Plug>MoveBlockLeft', mode = 'v' },
    { '<S-l>', '<Plug>MoveBlockRight', mode = 'v' },
  },
  config = function()
    vim.g.move_key_modifier_visualmode = 'S'
  end,
}
