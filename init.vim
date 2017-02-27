"dein Scripts-----------------------------
" if &compatible
"   set nocompatible               " Be iMproved
" endif

" " Required:
" " set runtimepath+=/Users/wgillmer/.dein/repos/github.com/Shougo/dein.vim

" " Required:
" if dein#load_state('/Users/wgillmer/.dein')
"   call dein#begin('/Users/wgillmer/.dein')

"   " Let dein manage dein
"   " Required:
"   call dein#add('/Users/wgillmer/.dein/repos/github.com/Shougo/dein.vim')

"   " Add or remove your plugins here:
"   call dein#add('dracula/vim')
"   call dein#add('fatih/vim-go')
"   call dein#add('Shougo/deoplete.nvim')
"   call dein#add('zchee/deoplete-go', {'build': 'make'})
"   call dein#add('majutsushi/tagbar')
"   call dein#add('ctrlpvim/ctrlp.vim')
"   call dein#add('vim-airline/vim-airline')
"   call dein#add('vim-airline/vim-airline-themes')
"   call dein#add('mhinz/vim-startify')
"   call dein#add('airblade/vim-gitgutter')
"   call dein#add('itchyny/vim-gitbranch')
"   call dein#add('godlygeek/tabular')
"   call dein#add('plasticboy/vim-markdown')
"   call dein#add('ekalinin/Dockerfile.vim')
"   call dein#add('vim-syntastic/syntastic')
"   call dein#add('Shougo/unite.vim')
"   call dein#add('tpope/vim-commentary')


"   " You can specify revision/branch/tag.
"   "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

"   " Required:
"   call dein#end()
"   call dein#save_state()
" endif

" " Required:
" filetype plugin indent on
" syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
"

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

" Key bindings
" get to commands faster
nnoremap ; :
" leader key
let mapleader = "\<SPACE>" 
" show tagbar
nmap <F8> :TagbarToggle<CR>

" Unite key bindings
" Open buffer menu
" nnoremap <Leader>b :Unite buffer<CR>
" Open most recently used files
" nnoremap <Leader>f :Unite file<CR>

" fzf key bindings 
" nnoremap <Leader>b : <CR>

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
"let g:airline#extensions#tabline#enabled = 2
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#right_sep = ' '
"let g:airline#extensions#tabline#right_alt_sep = '|'
"let g:airline_left_sep = ' '
"let g:airline_left_alt_sep = '|'
"let g:airline_right_sep = ' '
"let g:airline_right_alt_sep = '|'
"let g:airline_theme= 'dracula'

" vim-gutter configuration
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=black

" markdown configuration
" disabled automatic folding
let g:vim_markdown_folding_disabled=1

" syntastic configuration
" make it play nice with vim-go
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"

" vim-commentry
noremap <leader>/ :Commentary<cr>
