return {
  'famiu/bufdelete.nvim',
  config = function()
    local map = function(mode, left, right, desc)
      local options = { silent = true, noremap = true, desc = desc }

      vim.keymap.set(mode, left, right, options)
    end

    map('n', '<S-d>', ':bdelete<CR>')
  end,
}
