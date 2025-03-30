return {
  'Joakker/lua-json5',
  config = function()
    -- NOTE: install json5 need `cargo` and should manually install the .so
    -- just run the `install.sh` under plugin root directory.
    local plugin_path = vim.fn.stdpath 'data' .. '/lazy/lua-json5/lua'
    package.cpath = package.cpath .. ';' .. plugin_path .. '/?.so'
  end,
}
