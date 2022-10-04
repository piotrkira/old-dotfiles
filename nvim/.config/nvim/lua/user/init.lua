require('user.keybindings')
require('user.settings')
require('user.plugins')

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

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require 'lspconfig'.pyright.setup {
  settings = {
    python = {
      path = '/usr/bin/python'
    }
  }
}
require 'lspconfig'.gopls.setup { capabilities = capabilities }
require 'lspconfig'.clangd.setup {}
require 'lspconfig'.rls.setup {}
require 'lspconfig'.tsserver.setup {}

-- lua lsp
require 'lspconfig'.sumneko_lua.setup {
  workspace = {
    library = vim.api.nvim_get_runtime_file("", true),
  },
}

-- vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
-- vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]
-- vim.o.completeopt = 'menuone,noselect'
vim.cmd("highlight QuickScopePrimary gui=bold guibg='#504945' guifg='#bdae93'")
vim.cmd("highlight QuickScopeSecondary guibg='#504945' guifg='#bdae93'")

vim.cmd('let g:sneak#label = 1')
