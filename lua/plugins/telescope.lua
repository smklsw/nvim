return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')

    local map = function(mode, left, right, desc)
      local options = { silent = true, noremap = true, desc = desc }

      vim.keymap.set(mode, left, right, options)
    end

    local telescope_options = {
      defaults = {
        prompt_prefix = '   ',
        selection_caret = '  ',
      },
    }

    map(
      'n',
      '<Leader>ff',
      function ()
        builtin.find_files({ hidden = true, no_ignore = false })
      end,
      '[F]ind'
    )

    map(
      'n',
      '<Leader>fF',
      function ()
        builtin.find_files({ hidden = true, no_ignore = true })
      end,
      '[F]ind'
    )

    map('n', '?', builtin.help_tags, '[H]elp')
    map('n', '<Leader>sf', builtin.live_grep, '[F]ind')
    map('n', '<Leader>bf', builtin.buffers, '[F]ind')

    require('telescope').setup(telescope_options)
  end,
}
