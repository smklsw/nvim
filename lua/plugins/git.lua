local map = function(mode, left, right, desc)
  local options = { silent = true, noremap = true, desc = desc }

  vim.keymap.set(mode, left, right, options)
end

return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },
  {
    'tpope/vim-fugitive',
    config = function()
      local builtin = require('telescope.builtin')

      map('n', '<Leader>vs', vim.cmd.Git, '[S]tatus')
      map('n', '<Leader>vl', ':G log<CR>', '[L]og')
      map('n', '<Leader>vL', builtin.git_commits, '[L]og (Telescope)')
      map('n', '<Leader>vb', builtin.git_branches, '[B]ranches')
      map('n', '<Leader>vS', builtin.git_stash, '[S]tash')
    end,
  },
}
