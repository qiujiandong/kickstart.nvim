return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        header = {
          '██████╗ ██╗   ██╗███╗   ██╗ ██████╗ ██╗   ██╗ █████╗ ',
          '██╔══██╗██║   ██║████╗  ██║██╔═══██╗██║   ██║██╔══██╗',
          '██████╔╝██║   ██║██╔██╗ ██║██║   ██║██║   ██║███████║',
          '██╔══██╗╚██╗ ██╔╝██║╚██╗██║██║   ██║╚██╗ ██╔╝██╔══██║',
          '██║  ██║ ╚████╔╝ ██║ ╚████║╚██████╔╝ ╚████╔╝ ██║  ██║',
          '╚═╝  ╚═╝  ╚═══╝  ╚═╝  ╚═══╝ ╚═════╝   ╚═══╝  ╚═╝  ╚═╝',
        },

        shortcut = {
          { desc = ' Files', group = '@string', action = 'Telescope find_files', key = 'f' },
          { desc = ' Recent', group = '@string', action = 'Telescope oldfiles', key = 'r' },
          { desc = ' New File', group = '@string', action = 'ene | startinsert', key = 'n' },
          { desc = ' Update', group = '@string', action = 'Lazy sync', key = 'u' },
          { desc = ' Config', group = '@string', action = 'edit $MYVIMRC', key = 'c' },
          { desc = '󰅚 Quit', group = '@string', action = 'qa', key = 'q' },
        },

        footer = function()
          local stats = require('lazy').stats()
          local plugins_count = stats.count
          local loaded_ms = math.floor(stats.startuptime * 100) / 100
          return { '🚀 ' .. plugins_count .. ' plugins loaded in ' .. loaded_ms .. 'ms' }
        end,
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
