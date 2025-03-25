call plug#begin()
Plug 'tidalcycles/vim-tidal'
Plug 'cloudhead/neovim-fuzzy'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tmhedberg/SimpylFold'
Plug 'nvie/vim-flake8'
Plug 'andymass/vim-matchup'
Plug 'joshdick/onedark.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'sphamba/smear-cursor.nvim'
call plug#end()

lua require('smear_cursor').enabled = true

" setup statusline
" ref: https://github.com/scrooloose/vimfiles/blob/master/vimrc#L78
set statusline =%#identifier#
set statusline+=[%f]    "tail of the filename
set statusline+=%*

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h      "help file flag
set statusline+=%y      "filetype

"read only flag
set statusline+=%#identifier#
set statusline+=%r
set statusline+=%*

"modified flag
set statusline+=%#warningmsg#
set statusline+=%m
set statusline+=%*

set statusline+=%{fugitive#statusline()}

"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

"show relative linenumbers
set relativenumber

syntax on
filetype plugin indent on
filetype plugin on
let mapleader=","
" this mucks up tidalvim prelude window loc
" set splitbelow
set splitright
" remap keys for easier moving between split windows
" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" remap for neovim-fuzzy
nnoremap <C-p> :FuzzyOpen<CR>

" remap for undotree pane toggle
nnoremap <F5> :UndotreeToggle<CR>

set bg=dark
set t_Co=Nightfox

set termguicolors

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"set linebreak
"set showbreak=+++
set visualbell
"set hlsearch
"set smartcase
set ignorecase
set incsearch
set autoindent
"set ruler
set undolevels=1000
set backspace=indent,eol,start
set mouse=

" folding code, recommend SimpylFold for python
"set foldmethod=marker
"set nofoldenable
set foldlevelstart=20

" pep8 syntax checking for python, with flake8
autocmd BufWritePost *.py call Flake8()

" SimpylFold options
let g:SimpylFold_docstring_preview = 1

" map fold/unfold to space
nnoremap <space> za
vnoremap <space> zf

" remap enter to open Command-T in tab instead of split
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

" reduce updatetime for vim-gutter plugin
set updatetime=100

" handle ctrl arrow keys without deleting lines
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

source $HOME/.local/share/nvim/plugged/onedark.vim/colors/onedark.vim

let g:tidal_target = "terminal"
