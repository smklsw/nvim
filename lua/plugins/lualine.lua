return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local options = {
      options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
      },
    }

    require('lualine').setup(options)
  end,
}
