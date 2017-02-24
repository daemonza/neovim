"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/wgillmer/.dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/wgillmer/.dein')
  call dein#begin('/Users/wgillmer/.dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/wgillmer/.dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  " call dein#add('Shougo/neosnippet.vim')
  " call dein#add('Shougo/neosnippet-snippets')

  " Go development 
  call dein#add('fatih/vim-go')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-go', {'build': 'make'})
  call dein#add('majutsushi/tagbar')

  " Theme
  call dein#add('dracula/vim')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" Configuration

color dracula

" Key bindings
nmap <F8> :TagbarToggle<CR>

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
