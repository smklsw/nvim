return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local map = function(mode, left, right, desc)
      local options = { silent = true, noremap = true, desc = desc }

      vim.keymap.set(mode, left, right, options)
    end

    map(
      'n',
      '<Leader>dF',
      function()
        require('trouble').toggle('workspace_diagnostics')
      end,
      '[F]ind (Workspace)'
    )
    
    map(
      'n',
      '<Leader>df',
      function()
        require('trouble').toggle('document_diagnostics')
      end,
      '[F]ind (Document)'
    )

    map(
      'n',
      '<Leader>dq',
      function()
        require('trouble').toggle('quickfix')
      end,
      '[Q]uickfix'
    )

    require('trouble').setup()
  end,
}
