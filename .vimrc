" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Copy paste
set pastetoggle=<F2>
set clipboard=unnamed

" Ruler
set ruler laststatus=2 hlsearch

" Tab behaviour (4 spaces)
set softtabstop=4 shiftwidth=4 expandtab

" Use relative line numbers and abs number for current line
set rnu
set nu

" Show document width
set tw=79    " width of document
set nowrap   " don't auto wrap on load
set fo-=t    " don't auto wrap text when typing

" Highligt width 80 only if crossed
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%80v', 100)

" Permanently highligh width 120 
exec 'set colorcolumn=' .join(range(120,120),",")

" Syntax highligth
syntax on

" Remap <Leader> key
let mapleader = ","

" Remap split navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-m> <c-w>m

" Map sort function
vnoremap <Leader>s :sort<CR>

