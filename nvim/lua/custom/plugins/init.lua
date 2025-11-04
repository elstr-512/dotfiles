-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    -- install without yarn or npm
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    config = function()
      vim.fn['mkdp#util#install']()
    end,
  },

  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      columns = {
        'icon',
        'permissions',
        -- 'size',
        -- 'mtime',
      },

      view_options = {
        show_hidden = true,
      },

      keymaps = {
        -- disable keys controling splits
        ['<C-s>'] = false, -- "vertical"
        ['<C-h>'] = false, -- "horizontal"
        ['<C-t>'] = false, -- "tab"
        ['<C-l>'] = false, -- "refresh"
      },
    },
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    vim.keymap.set('n', '\\', '<CMD>Oil<CR>', { desc = 'Open Oil or parent directory' }),
  },
}
