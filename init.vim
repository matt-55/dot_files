scriptencoding utf-8
set encoding=utf-8

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/twilight256.vim'
Plug 'aperezdc/vim-template'
Plug 'matthewtodd/vim-twilight'
Plug 'aperezdc/vim-template'
"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'chriskempson/base16-vim'
Plug 'tomasr/molokai'
Plug 'crusoexia/vim-monokai'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'felipec/notmuch-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-scripts/Smart-Tabs'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'Shougo/echodoc', {'lazy' : 1, 'autoload' : {'insert' : 1} }
Plug 'zchee/deoplete-jedi'
Plug 'dhruvasagar/vim-table-mode'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-abolish'
Plug 'equalsraf/neovim-gui-shim'
Plug 'klen/python-mode'
"'Plug 'zchee/deoplete-clang'
call plug#end()

"Open all function folds
"au BufRead * normal zR

colorscheme molokai
:set noet sts=0 sw=4 ts=4
:set cindent
:set pi
:set cinoptions=(0,u0,U0

"Relative line numbers
:set rnu
"Current line keeps absolute line number
:set nu
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Turn off pymode completion (interferes w/ deoplete)
let g:pymode_rope_completion = 0

let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
:set listchars=tab:▸\ 
:set listchars+=space:·
:set listchars+=eol:¬
hi SpecialKey ctermfg=7 guifg=gray
cnoremap <F5> <C-c>:set list!<CR>
inoremap <F5> <C-c>:set list!<CR>
noremap <F5> <C-c>:set list!<CR>



let &colorcolumn="80,".join(range(120,999),",")
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

let g:deoplete#enable_at_startup = 1

autocmd FileType python setlocal omnifunc=jedi#completions

let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#show_call_signatures = 0
let g:echodoc_enable_at_startup = 1

set clipboard+=unnamedplus

"Function creating defaul split layout with terminal in the bottom split
function! DoSplit()
	:split
	:resize 45
	:vsplit
	:execute "normal \<C-j>"
	:terminal
	:call feedkeys("\<C-\>") "this and next cmd enters normal mode in term
	:call feedkeys("\<C-n>")
	:call feedkeys("\<C-k>") "move back to top split
endfunction

nmap <F12> :call DoSplit()<CR>


"Force disable mouse
set mouse-=a

"Leader key
let mapleader = " "

vnoremap <Leader>s :sort<CR>

:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-j> <C-\><C-n><C-w>j
:tnoremap <C-k> <C-\><C-n><C-w>k
:tnoremap <C-l> <C-\><C-n><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

:tnoremap <A-Left> <C-\><C-n><C-w>h
:tnoremap <A-Down> <C-\><C-n><C-w>j
:tnoremap <A-Up> <C-\><C-n><C-w>k
:tnoremap <A-Right> <C-\><C-n><C-w>l
:nnoremap <A-Left> <C-w>h
:nnoremap <A-Down> <C-w>j
:nnoremap <A-Up> <C-w>k
:nnoremap <A-Right> <C-w>l

"Map Arrow keys to Ctrl h,j,k,l in insert mode to ease the use of deoplete
:imap <C-h> <Left>
:imap <C-j> <Down>
:imap <C-k> <Up>
:imap <C-l> <Right>

"Use Ctrl+s as save
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>
"Save in insert mode and return to insert mode
":imap <c-s> <Esc>:w<CR>a

"Map F2 to :RopeGotoDefinition
:nmap <F2> <C-c>g
:imap <F2> <C-c>g
":cnoremap <F2> <C-c>g
":inoremap <F2> <C-c>g
":noremap <F2> <C-c>g

"Map F3 to jump backward (previous position)
:cnoremap <F3> <C-o>
:inoremap <F3> <C-o>
:noremap <F3> <C-o>

"Map F4 to jump forward (next position)
:cnoremap <F4> <Tab>
:inoremap <F4> <Tab>
:noremap <F4> <Tab>

"Map sort function
vnoremap <Leader>s :sort<CR>
