"map <C-r><C-r> :!clear; sudo bundle exec ckit brew <Return>
"map <C-r> :!clear; python % <Return>
"map <C-r> :!clear; rspec % <Return>
"map <C-r> :!clear; bundle exec rake cloud[cloudwall,false,'~slow ~wip'] <Return>
"map <C-r> :!clear; bundle exec rake tags:by_use['low'] <Return>
"map <C-r> :!clear; processes=5 bundle exec rake headless[cloudwall,,] <Return>
"map <C-r> :!clear; processes=1 bundle exec rake headless[,,focus] <Return>
"map <C-r> :!clear; bundle exec rake parallel:full <Return>

let mapleader = ","
set list
set number
"set list listchars=trail:·,extends:#
set list listchars=trail:·,eol:¬
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

runtime bundle/vim-pathogen/autoload/pathogen.vim
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

set laststatus=2
set statusline=
set statusline+=%F                          "file & path
set statusline+=\ %{fugitive#statusline()}  "git branch
hi StatusLine ctermfg=DarkYellow ctermbg=Black
au InsertEnter * hi StatusLine ctermfg=DarkRed ctermbg=DarkGreen
au InsertLeave * hi StatusLine ctermfg=DarkGreen ctermbg=Black

let g:NERDTreeDirArrows=0
let NERDTreeShowHidden=1

" System wide copy paste
set clipboard=unnamedplus

" Allows you to close vim, come back, and be able to undo with 'u'
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" Spell check for markdown
autocmd BufRead,BufNewFile *.md setlocal spell
hi clear SpellBad
hi SpellBad cterm=underline

set cursorline
"set cursorcolumn
"set colorcolumn=80
set incsearch
set autoindent
set showcmd

map <Leader><C-r> :!clear; ruby % <Return>
map <Leader><C-n> :!clear; node % <Return>
