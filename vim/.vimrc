set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
"" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
Bundle 'groenewege/vim-less'
"
Plugin 'fatih/vim-go'
"
Plugin 'wting/rust.vim'
"
Plugin 'leafgarland/typescript-vim'
"
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1
Plugin 'kylef/apiblueprint.vim'
"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set mouse=a
set number
set ignorecase
set showcmd
set shiftwidth=4
set tabstop=4
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
set expandtab
set incsearch
set hlsearch
set colorcolumn=80
highlight ColorColumn ctermbg=6
syntax on
map <F3> :grep! -R --include=\*.{c,h,cc,cpp,hpp} <C-R><C-W> . <CR><CR>
map <F6> :grep! -R 
" Increase and decrease window size
map <F4> 10<C-W>-
map <F5> 10<C-W>+
map <F7> 80lb
