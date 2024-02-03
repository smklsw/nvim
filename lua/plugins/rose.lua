return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    local options = {
      variant = 'main',
      enable = {
        terminal = true
      },
      styles = {
        italic = false,
        transparency = true,
      },
    }

    require('rose-pine').setup(options)
    vim.cmd('colorscheme rose-pine')
  end,
}
