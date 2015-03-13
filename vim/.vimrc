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
"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set mouse=a
set number
set ignorecase
set showcmd
set shiftwidth=2
set tabstop=2
set expandtab
set incsearch
set hlsearch
syntax on
"hi CursorLine term=none cterm=none ctermbg=3
"Not sure what this does. It's for omnicppcomplete
"set nocp
"filetype plugin on
"set ofu=syntaxcomplete#Complete
" Map CTRL-12 to build ctags
"map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
map <F12> :!ctags -R .<CR><CR>
" Tag all C/C++ files
" map <F12> :!ctags *.c *.h *.cc *.cpp *.hpp<CR><CR>
" Map F7 to build with 12 core CPU. ! is to not jump to first error
"map <F7> :cd tests/ue <CR> :make! -j13 <CR> :cd ../../ <CR>
"map <F7> :cd dido/bcn <CR> :make! -j13 <CR> :cd ../../ <CR>
"map <F7> :cd dido <CR> :!./build.sh <CR> :cd ../ <CR>
map <F8> :!nosetests <CR>
map <F9> :!make test <CR>
" List all ctags for identifier
map <F2> :tselect <CR>
" Search recursively for word under cursor. Only C/C++ files. Use '!' to avoid
" jumping to the first result.
map <F3> :grep! -R --include=\*.{c,h,cc,cpp,hpp} <C-R><C-W> . <CR><CR>
map <F6> :grep! -R 
" Increase and decrease window size
map <F4> 10<C-W>-
map <F5> 10<C-W>+
