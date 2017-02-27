if &compatible
  set nocompatible               " Be iMproved
endif

" setup plugins directory for vim-plug
call plug#begin('~/.vim_plugins')

Plug 'dracula/vim'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', {'build': 'make'}
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/vim-gitbranch'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'ekalinin/Dockerfile.vim'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/unite.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

" Configuration
" set theme
color dracula
" no beeping
set noerrorbells   
" ignore case while searching
set ignorecase
" ignore case unless query have case set 
set smartcase
" set relative line numbers
set relativenumber
" show the actual line number where you are at
set number
set cursorline

" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#json_directory = '/path/to/data_dir'

" vim-go syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" use goimports with vim-go instead of gofmt
let g:go_fmt_command = "goimports"

" airline configuration
" let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'dracula'

" vim-gutter configuration
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=black

" markdown configuration
" disabled automatic folding
let g:vim_markdown_folding_disabled=0

" syntastic configuration
" make it play nice with vim-go
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"

" Key bindings
" get to commands faster
nnoremap ; :
" leader key
let mapleader = "\<SPACE>" 
" show tagbar
nmap <leader>t :TagbarToggle<CR>

" vim-commentry
noremap <leader>; :Commentary<cr>

" fzf settings
" show files
nnoremap <silent> <leader><space> :Files<CR>
" show buffers
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>w :Windows<CR>
" interactive search of the current file/buffer 
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
" show history of opened files
nnoremap <silent> <leader>? :History<CR>
" search lines through files
nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
nnoremap <silent> <leader>. :AgIn

" git fugitive key bindings
" show git commits
nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>ga :BCommits<CR>
" git status
nnoremap <silent> <leader>gs :Gstatus<CR>
" git diff
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
" git blame
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
nnoremap <silent> <leader>gE :Gedit<space>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gR :Gread<space>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gW :Gwrite!<CR>
nnoremap <silent> <leader>gq :Gwq<CR>
nnoremap <silent> <leader>gQ :Gwq!<CR>
