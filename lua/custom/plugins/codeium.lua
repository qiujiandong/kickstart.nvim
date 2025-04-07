return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function()
    -- vim.api.nvim_create_autocmd('FileType', {
    --   pattern = 'python',
    --   callback = function()
    --     vim.g.codeium_manual = false
    --   end,
    -- })
    -- vim.api.nvim_create_autocmd('FileType', {
    --   pattern = { 'c', 'cpp', 'rust', 'lua', 'rst' },
    --   callback = function()
    --     vim.g.codeium_manual = true
    --   end,
    -- })
    -- <C-]> Dismiss the current suggestion.
    -- <M-]> Cycle to the next suggestion.
    -- <M-[> Cycle to the previous suggestion.
  end,
}
