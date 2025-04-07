return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        -- ANSI shadow format. Use this tool to generate: https://patorjk.com/software/taag
        header = {
          '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
          '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
          '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
          '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
          '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
          '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
        },

        shortcut = {
          { desc = '📁 Workspace', group = '@string', action = 'Telescope persisted', key = 'w' },
          { desc = '🔍 Files', group = '@string', action = 'Telescope find_files', key = 'f' },
          { desc = '🕘 Recent', group = '@string', action = 'Telescope oldfiles', key = 'r' },
          { desc = '📄 New File', group = '@string', action = 'ene | startinsert', key = 'n' },
          { desc = '⬆️ Update Plugins', group = '@string', action = 'Lazy sync', key = 'u' },
          { desc = '🚪 Quit', group = '@string', action = 'qa', key = 'q' },
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
