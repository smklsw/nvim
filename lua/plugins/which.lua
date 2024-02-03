return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  config = function()
    require('which-key').register({
      ['<Leader>s'] = { name = '[S]ymbol', _ = 'which_key_ignore' },
      ['<Leader>d'] = { name = '[D]iagnostic', _ = 'which_key_ignore' },
      ['<Leader>h'] = { name = '[H]unk', _ = 'which_key_ignore' },
      ['<Leader>b'] = { name = '[B]uffer', _ = 'which_key_ignore' },
      ['<Leader>f'] = { name = '[F]ile', _ = 'which_key_ignore' },
      ['<Leader>w'] = { name = '[W]indow', _ = 'which_key_ignore' },
      ['<Leader>v'] = { name = '[V]ersion', _ = 'which_key_ignore' },
      ['<Leader>t'] = { name = '[T]ool', _ = 'which_key_ignore' },
    })

    require('which-key').register({
      ['<Leader>'] = { name = 'VISUAL <leader>' },
      ['<Leader>h'] = { '[H]unk' },
    }, { mode = 'v' })
  end,
}
