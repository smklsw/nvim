return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local map = function(mode, left, right, desc)
      local options = { silent = true, noremap = true, desc = desc }

      vim.keymap.set(mode, left, right, options)
    end

    local options = {
      default_file_explorer = true,
      columns = {
        'icon',
        'permissions',
        'size',
      },
      delete_to_trash = true,
    }

    map('n', '<Leader>fb', '<Cmd>Oil<CR>', '[B]rowse')

    require('oil').setup(options)
  end,
}
