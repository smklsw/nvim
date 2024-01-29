-- Clipboard

vim.opt.clipboard:append('unnamedplus')

-- Completion

vim.opt.completeopt = { 'menuone', 'noselect', 'preview' }
vim.opt.pumheight = 8
vim.opt.pumwidth = 20

-- Search

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Formatting

-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
-- vim.opt.foldclose = 'all'
-- vim.opt.foldopen = 'all'

-- Indentation

vim.opt.autoindent = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftround = true

-- Performance

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Undo

vim.opt.undofile = true
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath('config') .. '/.local/etc/undo//'

-- User Interface

vim.opt.termguicolors = true
vim.wo.signcolumn = 'yes'
vim.opt.errorbells = false
vim.opt.visualbell = false
vim.opt.belloff = 'all'
vim.opt.laststatus = 3
vim.opt.showcmd = false
vim.opt.showmode = false
vim.opt.wrap = false

-- Position

vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.numberwidth = 3
-- vim.opt.statuscolumn = '%s%=%{v:relnum?v:relnum:v:lnum} '
vim.opt.ruler = false

-- Miscellaneous

vim.opt.confirm = true
vim.opt.scrolloff = 8
vim.opt.viewdir = vim.fn.stdpath('config') .. '/.local/etc/view//'
