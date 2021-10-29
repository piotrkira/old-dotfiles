require('plugins')
require('settings')
require('keybindings')

require('colorizer').setup {
  '*';
}

local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'buffer', keyword_length = 5 },
    { name = 'path' },
  }),
  formatting = {
    format = require('lspkind').cmp_format({with_text = true, menu = ({
        buffer = "[buf]",
        nvim_lsp = "[lsp]",
        nvim_lua = "[lua]",
    })}),
  },
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local function on_attach() end
require('nvim-autopairs').setup()
require'lspconfig'.pyright.setup{
  settings = {
    python = {
      path = '/usr/bin/python3.9'
    }
  }
}
require'lspconfig'.gopls.setup{capabilities=capabilities}
require'lspconfig'.clangd.setup{}
require'lspconfig'.tsserver.setup{ on_attach=on_attach, capabilities=capabilities }

require('gitsigns').setup()

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
  }
}

-- vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
-- vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]
-- vim.o.completeopt = 'menuone,noselect'
vim.cmd("highlight QuickScopePrimary gui=bold guibg='#504945' guifg='#bdae93'") vim.cmd("highlight QuickScopeSecondary guibg='#504945' guifg='#bdae93'")

require('lualine').setup{
  options = {
    theme = 'everforest',
    section_separators = {'', ''},
    component_separators = {'|', '|'},
    disabled_filetypes = {},
    icons_enabled = true,
  },
  sections = {
    lualine_a = { {'mode', upper = true} },
    lualine_b = { {'branch', icon = ''} },
    lualine_c = { {'filename', file_status = true} },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location'  },
  },
  inactive_sections = {
    lualine_a = {  },
    lualine_b = {  },
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {  },
    lualine_z = {   }
  },
}

vim.cmd('let g:sneak#label = 1')
