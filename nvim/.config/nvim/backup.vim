lua require 'init'

let g:mapleader = "\<Space>"
syntax enable
syntax on
filetype indent on
filetype plugin on
set colorcolumn=80
set relativenumber
set signcolumn=yes
set shortmess+=c
set updatetime=50
set nobackup
set nowritebackup
set nowrap
set noswapfile
set cmdheight=1
set hidden
set number
set termguicolors
set tabstop=2
set showtabline=2
set softtabstop=2
set clipboard=unnamedplus
set nohlsearch
set cursorline
set ruler
set smartcase
set scrolloff=6
set sidescroll=5
set splitbelow
set splitright
set incsearch
set smarttab
set timeoutlen=300
set formatoptions-=cro
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set omnifunc=syntaxcomplete#Complete
map <C-n> :NERDTreeToggle<CR>
vnoremap < <gv
vnoremap > >gv

call plug#begin('~/.vim/plugged')
Plug 'frazrepo/vim-rainbow'
Plug 'APZelos/blamer.nvim'
Plug 'unblevable/quick-scope'
Plug 'ntpeters/vim-better-whitespace'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-repeat'
Plug 'liuchengxu/vim-which-key'
Plug 'ap/vim-css-color'
Plug 'prettier/vim-prettier'
Plug 'glepnir/zephyr-nvim'
Plug 'mhartington/oceanic-next'
Plug 'novakne/kosmikoa.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'honza/vim-snippets'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'tanvirtin/monokai.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-dispatch'
Plug 'szw/vim-maximizer'
Plug 'puremourning/vimspector'

"Plug 'metakirby5/codi.vim'
"Plug 'mbbill/undotree'
Plug 'majutsushi/tagbar'
call plug#end()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

set bg=dark
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox

let g:blamer_delay = 50
let g:blamer_prefix = ''
let g:blamer_template = '<author>, <summary>'

let g:rainbow_active = 1

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

nmap <Leader>p <Plug>(Prettier)
tnoremap <Esc> <C-\><C-n>
"let g:airline_extensions = []
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_section_z = ''
nmap <F8> :TagbarToggle<CR>
nnoremap <C-f> :Files<Cr>
nnoremap <C-g> :Rg<CR>

let g:closetag_filetypes ='jsx,tsx'
let g:closetag_filenames ='*.tsx,*.jsx,*.html'
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
let g:closetag_emptyTags_caseSensitive = 1

"let g:fzf_preview_window = 'right:50%'
"let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
let $FZF_DEFAULT_OPTS = '--reverse'

highlight QuickScopePrimary gui=bold guibg='#504945' guifg='#bdae93'
highlight QuickScopeSecondary guibg='#504945' guifg='#bdae93'
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

"" Use tab for trigger completion with characters ahead and navigate.
"" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
"" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-m>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
