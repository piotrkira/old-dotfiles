local map = vim.api.nvim_set_keymap
vim.cmd("inoremap <silent><expr> <CR>      compe#confirm('<CR>')")
vim.cmd('let g:tmux_navigator_no_mappings = 1')
map('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '
map('n', '<Leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
map('n', '<Leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = true, silent = true})
map('n', '<Leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true})
map('n', '<Leader>gi', '<cmd>lua vim.lsp.buf.impementation()<CR>', {noremap = true, silent = true})
map('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true})
map('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', {noremap = true, silent = true})
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
-- map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {noremap = true, silent = true})
map('n', '<C-p>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true, silent = true})
map('n', '<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true, silent = true})
map('n', '<C-J>', '<cmd>:cnext<CR>', {noremap = true, silent = true})
map('n', '<C-K>', '<cmd>:cprev<CR>', {noremap = true, silent = true})
-- map('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
map('v', '<', '<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})
map('n', 'Y', 'y$', {noremap = true, silent = true})
-- map('n', 'n', 'nzzzv', {noremap = true, silent = true})
-- map('n', 'N', 'Nzzzv', {noremap = true, silent = true})
-- map('n', 'J', 'mzJ`z', {noremap = true, silent = true})
map('n', '<C-f>', '<cmd>Telescope find_files<CR>', {noremap = true, silent = true})
map('n', '<C-g>', '<cmd>Telescope live_grep<CR>', {noremap = true, silent = true})
