require('user.keybindings')
require('user.settings')
require('user.plugins')
require('user.autocmds')

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

-- local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local configs = require('lspconfig/configs')
local util = require('lspconfig/util')

local path = util.path

local function get_python_path(workspace)
  -- Use activated virtualenv.
  if vim.env.VIRTUAL_ENV then
    return path.join(vim.env.VIRTUAL_ENV, 'bin', 'python')
  end

  -- Find and use virtualenv in workspace directory.
  for _, pattern in ipairs({ '*', '.*' }) do
    local match = vim.fn.glob(path.join(workspace, pattern, 'pyvenv.cfg'))
    if match ~= '' then
      return path.join(path.dirname(match), 'bin', 'python')
    end
  end

  -- Fallback to system Python.
  return exepath('python3') or exepath('python') or 'python'
end

require 'lspconfig'.pyright.setup({
  before_init = function(_, config)
    config.settings.python.pythonPath = get_python_path(config.root_dir)
  end
})

require 'lspconfig'.gopls.setup {}
require 'lspconfig'.clangd.setup {}
require 'lspconfig'.rls.setup {}
require 'lspconfig'.tsserver.setup {}

-- lua lsp
require 'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT"
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
    }
  }
}

vim.diagnostic.config({
  float = {
    source = 'always',
  }
})
