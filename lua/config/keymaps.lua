local options = { silent = true, noremap = true }

local map = function(mode, left, right, desc)
  local options = { silent = true, noremap = true, desc = desc }

  vim.keymap.set(mode, left, right, options)
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('i', 'jk', '<Escape>')

-- Windows

map('n', '<C-Up>', '<cmd>resize +2<cr>')
map('n', '<C-Down>', '<cmd>resize -2<cr>')
map('n', '<C-Left>', '<cmd>vertical resize -2<cr>')
map('n', '<C-Right>', '<cmd>vertical resize +2<cr>')

map('n', '<Leader>wd', '<C-W>c', '[D]elete')

map('n', '<Leader>w-', '<C-W>s', 'Split horizontally')
map('n', '<Leader>w|', '<C-W>v', 'Split vertically')

-- Lines

map('n', '<A-j>', '<cmd>m .+1<cr>==')
map('n', '<A-k>', '<cmd>m .-2<cr>==')
map('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi')
map('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi')
map('v', '<A-j>', ':m \'>+1<cr>gv=gv')
map('v', '<A-k>', ':m \'<-2<cr>gv=gv')

-- Buffers

map('n', '<S-h>', '<cmd>bprevious<cr>')
map('n', '<S-l>', '<cmd>bnext<cr>')

-- Miscellaneous

map({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>')
