require('plugins')
require('settings')
require('keybindings')

vim.o.background = 'dark'

require('colorizer').setup {
  '*';
}

local function on_attach() end
require('nvim-autopairs').setup()
require'lspconfig'.pyright.setup{
  settings = {
    python = {
      path = '/usr/bin/python3.9'
    }
  }
}
require'lspconfig'.gopls.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.tsserver.setup{ on_attach=on_attach }

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

vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]
vim.o.completeopt = 'menuone,noselect'
vim.cmd("highlight QuickScopePrimary gui=bold guibg='#504945' guifg='#bdae93'") vim.cmd("highlight QuickScopeSecondary guibg='#504945' guifg='#bdae93'")

require'compe'.setup {
  enabled = true;
  autocomplte = true;
  debug = false;
  min_length = 1;
  preselect = 'enalbe';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;
  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = { priority = 2};
    nvim_lua = true;
    vsnip = { priority = 3};
  };
}

require('lualine').setup{
  options = {
    theme = 'gruvbox',
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
