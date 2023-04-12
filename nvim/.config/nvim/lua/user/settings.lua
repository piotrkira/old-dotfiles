vim.o.termguicolors = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.o.clipboard = 'unnamedplus'
vim.opt.updatetime = 50
vim.o.timeoutlen = 600
vim.opt.cmdheight = 0
vim.o.showmode = false
vim.o.hidden = true
vim.opt.wrap = false

vim.opt.backup = false
vim.opt.swapfile = false

vim.o.writebackup = false
vim.opt.smartindent = true

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

vim.opt.showtabline = 2
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.signcolumn = 'yes'

vim.cmd('set omnifunc=syntaxcomplete#Complete')
vim.opt.encoding = 'UTF-8'
vim.opt.smartcase = true
vim.opt.cursorline = true
vim.opt.sidescrolloff = 5
vim.opt.scrolloff= 6
vim.opt.autoindent = true
vim.opt.ruler = true
vim.opt.incsearch = true
vim.cmd('set formatoptions-=cro')
vim.opt.colorcolumn = "80"
vim.opt.shortmess:append("c")
vim.g.everforest_background="hard"
vim.g.everforest_transparent_background=1
vim.cmd.colorscheme("everforest")

vim.fn.sign_define('DapBreakpoint', {text='', texthl='Debug', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointCondition', {text='', texthl='Debug', linehl='', numhl=''})
vim.fn.sign_define('DapLogPoint', {text='', texthl='Debug', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='', texthl='Debug', linehl='', numhl=''})
