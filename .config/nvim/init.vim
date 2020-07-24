set nocompatible

call plug#begin('~/local/share/nvim/plugged')
"Hello World!"
Plug 'tpope/vim-surround'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'

" Godot Support
" Plug 'habamax/vim-godot'
Plug 'calviken/vim-gdscript3'

" Nerd tree with git support
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" C/C++ Support
Plug 'WolfgangMehner/c-support'

" Dart support for Flutter
Plug 'dart-lang/dart-vim-plugin'
" Plug 'natebosch/vim-lsc'
" Plug 'natebosch/vim-lsc-dart'

call plug#end()

" Shortcut for NerdTree
map <C-n> :NERDTreeToggle<CR>

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

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
