require('user.keybindings')
require('user.settings')
require('user.plugins')
require('user.autocmds')


local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

vim.diagnostic.config({
  float = {
    source = 'always',
  }
})


local cmp = require 'cmp'
local select_opts = { behavior = cmp.SelectBehavior.Select }
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = false,
    }),
    ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
    ['<C-n>'] = cmp.mapping.select_next_item(select_opts),
    ['<C-k>'] = cmp.mapping.scroll_docs(-4),
    ['<C-j>'] = cmp.mapping.scroll_docs(4),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'path' },
  }, {
    { name = 'buffer', keyword_length = 5 },
  }),
  formatting = {
    format = require('lspkind').cmp_format({ with_text = true, menu = ({
      buffer = "[buf]",
      path = "[path]",
      nvim_lsp = "[lsp]",
      nvim_lua = "[lua]",
      luasnip = "[snip]",
    }) }),
  },
  preselect = false,
})
