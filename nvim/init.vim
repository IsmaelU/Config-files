syntax on

"Line Numbering"
set nu
set relativenumber

"Tabs"
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent 

set incsearch
set nohlsearch
set scrolloff=8

set t_Co=256

set hidden "Needed by Language Server"

call plug#begin('~/.config/nvim/plugged')

Plug 'dm1try/golden_size'


Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()

autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE

"Language Server configuration"

let g:LanguageClient_serverCommands = {
            \ 'rust': ['rust-analyzer'],
            \ }
