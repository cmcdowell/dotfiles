" ==== PATHOGEN ==============

call pathogen#infect()
filetype off
syntax on
filetype plugin indent on

" ==== PLUGIN SETTINGS ========

"ctrlp
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*.pyc,*.git*,*.swp
noremap <C-b> :CtrlPBuffer<cr>


" ==== STATUSLINE SETTINGS ===

set statusline=%t\      "tail of the filename
set statusline+=%#todo# "switch color to todo hlgroup
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=\ %f      "relative path to file in buffer
set statusline+=%*	"switch colors back
set statusline+=%=      "left/right separator
set statusline+=\ [%n]\ \     "buffer number
set statusline+=%c,     "cursor column
set statusline+=\ %l/%L,   "cursor line/total lines
set statusline+=\ %P    "percent through file

" ==== GENERAL SETTINGS =======

set encoding=utf-8
syntax on
set laststatus=2
colorscheme jellybeans

" Cursor line highlight
au InsertEnter * set cul
au InsertLeave * set nocul

" Scroll offset
set scrolloff=5

set bs=2 " make backspace behave like normal again
set hidden " Easier to use hidden buffer

" Rebind <Leader> key
let mapleader = ","

" Fix Y
map Y y$

" Toggles search highlighting
noremap <C-n> :set hlsearch!<CR>
vnoremap <C-n> :set hlsearch!<CR>
inoremap <C-n> :set hlsearch!<CR>

" Case insensitive search
set ignorecase

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Text bubbling single lines.
nmap <C-Up> ddkP
nmap <C-Down> ddp

" Text bubling several lines
vmap <C-Up> xkP'[V']
vmap <C-Down> xp'[V']

"Selection shifting left right
vmap <C-Right> xp`[v`]
vmap <C-Left> xhP`[v`]

" Fix it so quit and save will still work if if forget to let go of shift.
nmap :Q :q
nmap :W :w

"Commands to edit .vimrc
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" Showing line numbers and length
set number " show line numbers
set relativenumber
set tw=79 " width of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Useful settings
set history=700
set undolevels=700

" No annoying error sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Spell Checking
set spelllang=en_gb
nmap <leader>ss :setlocal spell!<cr>
nmap <leader>p 1z=

" Persistant undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=1000
