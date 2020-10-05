set nocompatible

call plug#begin('~/local/share/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'frazrepo/vim-rainbow'
"Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'lilydjwg/colorizer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'blueyed/vim-diminactive'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'mbbill/undotree'

" Godot Support
" Plug 'habamax/vim-godot'
Plug 'calviken/vim-gdscript3'

" Nerd tree with git support
"Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'

" C/C++ Support
Plug 'WolfgangMehner/c-support'

" Dart support for Flutter
Plug 'dart-lang/dart-vim-plugin'
" Plug 'natebosch/vim-lsc'
" Plug 'natebosch/vim-lsc-dart'

call plug#end()

set cul

" Shortcut for NerdTree
map <C-n> :Ranger<CR>

filetype plugin on


" don't know what these do , honestly
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" bind ii to esc
:imap ii <Esc>

" run coc-prettier on saving the file
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" enable 256 colours
set t_Co=256

syntax enable
set relativenumber
set number
set updatetime=100

"bind <F8> to compile and run cpp programs
autocmd vimEnter *.cpp map <F8> :w <CR> :!g++ --std=c++17 % -o %:r <CR> :!%:r <CR>

" open terminal in vim
map <Leader>tt :vnew term://bash<CR>

let g:rainbow_active = 1

" some options for the tab
set tabstop=4 softtabstop=0 shiftwidth=4 smarttab

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" set save undo history

if has("persistent_undo")
	set undodir=$HOME/.undodir
	set undofile
endif

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
