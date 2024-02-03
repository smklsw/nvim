local path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
local plugins = 'plugins'

if not vim.loop.fs_stat(path) then
  print('Installing `lazy`...')

  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    path,
  })

  print('`lazy` installation complete!')
end

vim.opt.rtp:prepend(path)

require('lazy').setup(plugins)
