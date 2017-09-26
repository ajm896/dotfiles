"ESCAPE
inoremap jk <esc>
"Edit vimrc from anywhere
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"Auto reload vimrc
autocmd! bufwritepost .vimrc source %
"leader
let mapleader=","
"numbers
set number
"colors
colorscheme molokai
"4 space <tab> visual
set tabstop=4
"4 space <tab> inserted
set softtabstop=4
"turns <tab> to spaces
set expandtab
"shows commands in bar
set showcmd
"shows line editing
set cursorline
"Command autocomplete
set wildmenu
"Lazy Redraw
set lazyredraw
"Match brackets and such
set showmatch

""Searching
set incsearch "search while typing
set hlsearch  "highlight matches
"turnoff highlight
nnoremap <leader><space> :nohlsearch<CR>



""Folding
set foldenable
set foldlevelstart=10 "opens most folds
set foldnestmax=10 "only fold deep nest on open
set foldmethod=indent "fold on indents

"Gundo open
nnoremap <leader>u :GundoToggle<CR>

""CtrlP
" Order top to bottom
let g:ctrlp_match_window = 'bottom,order:ttb'
"open in new buffer
let g:ctrlp_switch_buffer = 0

"Plugins
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'tpope/vim-dispatch'
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'townk/vim-autoclose'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'crusoexia/vim-monokai'
Plug 'sjl/gundo.vim'
"Calls filetype indent and syntax enable
call plug#end()



"GO
let g:go_fmt_command = "goimports"

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1

autocmd BufEnter Makefile setlocal noexpandtab
