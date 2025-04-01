return {
  'smoka7/hop.nvim',
  branch = 'master', -- optional but strongly recommended
  config = function()
    local hop = require 'hop'
    local directions = require('hop.hint').HintDirection
    -- you can configure Hop the way you like here; see :h hop-config
    hop.setup { keys = 'etovxqpdygfblzhckisuran', case_insensitive = true, quit_key = '<ESC>' }

    vim.keymap.set('n', '<M-w>', function()
      hop.hint_words()
    end, { desc = 'Hop to word', silent = true })

    vim.keymap.set('n', '<M-f>', function()
      hop.hint_lines()
    end, { desc = 'Hop to line', silent = true })

    vim.keymap.set('n', '<M-s>', function()
      hop.hint_char1()
    end, { desc = 'Hop to single char', silent = true })

    vim.keymap.set('n', '<M-d>', function()
      hop.hint_char2()
    end, { desc = 'Hop to double char', silent = true })

    vim.keymap.set('n', '<M-j>', function()
      hop.hint_vertical { direction = directions.AFTER_CURSOR }
    end, { desc = 'Hop down', silent = true })

    vim.keymap.set('n', '<M-k>', function()
      hop.hint_vertical { direction = directions.BEFORE_CURSOR }
    end, { desc = 'Hop up', silent = true })
  end,
}
