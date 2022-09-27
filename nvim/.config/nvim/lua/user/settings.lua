vim.o.termguicolors = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.clipboard = 'unnamedplus'
vim.o.updatetime = 50
vim.o.timeoutlen = 600
vim.o.cmdheight = 2
vim.o.cursorline = true
vim.o.showmode = false
vim.o.hidden = true
vim.wo.wrap = false
vim.o.backup = false
vim.o.writebackup = false
vim.bo.smartindent = true
vim.bo.expandtab = true
vim.o.showtabline = 2
vim.cmd('set ts=2')
vim.cmd('set sw=2')
vim.cmd('set smarttab')
vim.wo.number = true
vim.wo.relativenumber = true

vim.wo.signcolumn = 'yes'

vim.cmd('set omnifunc=syntaxcomplete#Complete')
vim.cmd('set encoding=UTF-8')
vim.cmd('set smartcase')
vim.cmd('set cursorline')
-- vim.cmd('set nohlsearch')
vim.cmd('set sidescroll=5')
vim.cmd('set scrolloff=6')
vim.cmd('set autoindent')
vim.cmd('set ruler')
vim.cmd('set incsearch')
vim.cmd('set noswapfile')
vim.cmd('set formatoptions-=cro')
vim.cmd('set colorcolumn=80')
vim.cmd('set shortmess+=c')
vim.cmd('set shortmess-=F')
vim.cmd('let g:edge_transparent_background = 0')
vim.cmd('let g:edge_style="aura"')
vim.cmd('let g:everforest_background="hard"')
vim.cmd('let g:everforest_transparent_background=1')
vim.cmd('colorscheme everforest')
