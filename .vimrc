map <C-r><C-r> :!clear; ruby % <Return>
map <C-r> :!clear; bundle exec ckit brew -c config_local.yaml --tag wip <Return>

let mapleader = ","
set list
set number
set listchars=trail:.,extends:#
set tabstop=2 shiftwidth=2 expandtab
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set noequalalways
set helpheight=9999
set winminheight=0
set winheight=999
set hlsearch

colorscheme Tomorrow-Night-Eighties
call pathogen#infect()

filetype on
syntax on

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <c-h> <c-w>h<c-w>_
map <c-l> <c-w>l<c-w>_
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<Return>
map <silent> <Leader><Leader> :noh<Return>