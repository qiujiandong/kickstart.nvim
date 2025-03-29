return {
  'ekickx/clipboard-image.nvim',
  opts = {
    default = {
      img_dir = 'images',
      img_dir_txt = 'images',
      affix = '![](%s)',
      use_absolute_path = false,
      relative_to_current_file = true,
    },
    markdown = {
      affix = '![](%s)',
    },
    rst = {
      img_dir = { 'source', 'images' },
      img_dir_txt = '/images',
      affix = '%s',
    },
  },
  -- NOTE: add patch with:
  -- curl -L https://github.com/ekickx/clipboard-image.nvim/pull/48.diff | git apply -
}
