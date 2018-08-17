call plug#begin('~/.local/share/nvim/plugged')
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'posva/vim-vue'
call plug#end()


augroup filetype_vue
    autocmd!
    autocmd BufReadPost *.vue setlocal filetype=vue
augroup END

" Always draw sign column. Prevent buffer moving when adding/deleting sign.
set signcolumn=yes

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'vue': ['vls'],
    \ }
let $RUST_BACKTRACE = 1
let g:LanguageClient_loggingFile = '/tmp/LanguageClient.log'
let g:LanguageClient_loggingLevel = 'INFO'
let g:LanguageClient_serverStderr = '/tmp/LanguageServer.log'

set number
set ignorecase
set mouse=a
set colorcolumn=80
highlight ColorColumn ctermbg=6

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype vue setlocal ts=2 sts=2 sw=2
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
set expandtab
map <F7> :syntax sync fromstart<CR>
