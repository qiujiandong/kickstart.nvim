-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  -- keys = {
  --   { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  -- },
  -- opts = {
  --   filesystem = {
  --     filtered_items = {
  --       visiable = true,
  --       hide_dotfiles = false,
  --       hide_gitignored = false,
  --     },
  --     window = {
  --       mappings = {
  --         ['\\'] = 'close_window',
  --       },
  --     },
  --     filesystem = {
  --       use_libuv_file_watcher = true,
  --       filtered_items = {
  --         visiable = true,
  --         hide_dotfiles = false,
  --         hide_gitignored = false,
  --       },
  --     },
  --     window = {
  --       width = 30,
  --       position = 'left',
  --     },
  --   }

  cmd = 'Neotree',
  ---@module 'neo-tree'
  ---@type neotree.Config
  config = function()
    require('neo-tree').setup {
      event_handlers = {
        {
          event = 'file_opened',
          handler = function()
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
      filesystem = {
        use_libuv_file_watcher = true,
        filtered_items = {
          visiable = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        width = 30,
        position = 'left',
      },
    }

    vim.keymap.set('n', '<TAB>', ':Neotree toggle<CR>', { desc = '[T]oggle Neotree', noremap = true, silent = true })
    vim.keymap.set('n', '<leader>o', ':Neotree focus<CR>', { desc = '[O]pen Neotree', noremap = true, silent = true })
  end,
}
