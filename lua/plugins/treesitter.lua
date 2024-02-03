return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local options = {}

    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'angular',
        'bash',
        'c',
        'cmake',
        'comment',
        'cpp',
        'css',
        'diff',
        'dockerfile',
        'ebnf',
        'go',
        'haskell',
        'html',
        'http',
        'javascript',
        'java',
        'jsdoc',
        'json',
        'kotlin',
        'latex',
        'lua',
        'luadoc',
        'ocaml',
        'python',
        'rust',
        'sql',
        'typescript',
        'tsx',
        'vim',
        'vimdoc',
      },
      highlight = { enabled = true },
    })
  end,
}
