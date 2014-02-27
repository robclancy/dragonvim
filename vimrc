"Forget compatibility with Vi. Who cares.
set nocompatible

"Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

"Write the old file out when switching between files.
set autowrite

"Display current cursor position in lower right corner.
set ruler

"Ever notice a slight lag after typing the leader key + command? This lowers
"the timeout.
set timeoutlen=500

"Switch between buffers without saving
set hidden

"Tab settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set autoindent
set expandtab
set copyindent

"Show command in bottom right portion of the screen
set showcmd

"Show lines numbers
set number

"Load in colour schemes
set background=dark
set t_Co=16
colorscheme solarized

"To toggle the color scheme between dark and light with F5
call togglebg#map("<F5>")

"Highlight the current line
set cursorline

"Always show the status line
set laststatus=2

"Better line wrapping 
set wrap
set textwidth=79
set formatoptions=qrn1

"Set incremental searching"
set incsearch

"Highlight searching
set hlsearch

"Case insensitive search
set ignorecase
set smartcase

"Hide MacVim toolbar by default
set go-=T

"Enable code folding
set foldenable

"Hide mouse when typing
set mousehide

" More useful command-line completion
set wildmenu

"Auto-completion menu
set wildmode=list:longest

"http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Backups
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap// " swap files
set backup " enable backup

"Custom indent settings
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType slim setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType css setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType less setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType sass setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType scss setlocal shiftwidth=2 tabstop=2 expandtab

" Other stuff
set mouse=a