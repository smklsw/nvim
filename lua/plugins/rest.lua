return {
  'rest-nvim/rest.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local map = function(mode, left, right, desc)
      local options = { silent = true, noremap = true, desc = desc }

      vim.keymap.set(mode, left, right, options)
    end

    local options = {
      result_split_horizontal = true,
    }

    map('n', '<Leader>tr', '<Plug>RestNvim')

    require('rest-nvim').setup(options)
  end,
}
