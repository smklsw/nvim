return {
  'williamboman/mason.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
    { 'j-hui/fidget.nvim', opts = {} },
    { 'folke/neodev.nvim', config = function() require('neodev').setup() end },
  },
  config = function()
    local builtin = require('telescope.builtin')

    local map = function(mode, left, right, desc)
      local options = { silent = true, noremap = true, desc = desc }

      vim.keymap.set(mode, left, right, options)
    end

    local servers = {
      angularls = {},
      asm_lsp = {},
      autotools_ls = {},
      bashls = {},
      clangd = {},
      dockerls = {},
      emmet_ls = {},
      gopls = {},
      gradle_ls = {},
      graphql = {},
      html = { filetypes = { 'html', 'twig', 'hbs'} },
      htmx = {},
      jdtls = {},
      jsonls = {},
      kotlin_language_server = {},
      lua_ls = {
        Lua = {
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
        },
      },
      neocmake = {},
      ocamllsp = {},
      powershell_es = {},
      pyright = {},
      rust_analyzer = {},
      spectral = {},
      sqlls = {},
      texlab = {},
      tsserver = {},
      yamlls = {},
      terraformls = { filetypes = { 'tf' } },
    }

    local on_attach = function(_, buffer)
      map('n', '<Leader>sr', vim.lsp.buf.rename, '[R]ename')
      map('n', '<Leader>sa', vim.lsp.buf.code_action, '[A]ction')
      map('n', '<Leader>sd', builtin.lsp_definitions, '[D]efinition')
      map('n', '<Leader>sR', builtin.lsp_references, '[R]eferences')
      map('n', '<Leader>si', builtin.lsp_implementations, '[I]mplementation')
      map('n', '<Leader>sw', builtin.lsp_dynamic_workspace_symbols, '[W]orkspace')
      map('n', '<Leader>sh', vim.lsp.buf.hover, '[H]over')
    end

    local capabilities = require('cmp_nvim_lsp').default_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    )

    require('mason-lspconfig').setup_handlers({
      function(server)
        require('lspconfig')[server].setup({
          capabilities = capabilities,
          on_attach = on_attach,
          settings = servers[server],
          filetypes = (servers[server] or {}).filetypes,
        })
      end,
    })

    vim.diagnostic.config({
      virtual_text = false,
      underline = false,
    })

    require('mason').setup()

    require('mason-lspconfig').setup({
      ensure_installed = vim.tbl_keys(servers),
    })
  end,
}
