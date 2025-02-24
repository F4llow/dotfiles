"My .vimrc file:

"Ctrl + hjkl = ← ↓ ↑ → (in all modes)
noremap <C-h> <Left>
noremap <C-j> <Down>
noremap <C-k> <Up>
noremap <C-l> <Right>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"kj = Escape
imap kj <Esc>

"flexible backspacing
set backspace=indent,eol,start

"
"Ctrl+Backspace to delete word in insert mode (macOS Terminal)
"inoremap <C-Del> <C-W>
"

"Word deletion mappings
inoremap <C-d>h <C-w>
inoremap <C-d>l <C-o>de

"Arrow keys (and therefore Ctrl + hjkl) wrap around in insert mode
set whichwrap+=<,>,[,]

"Automatic indentation based on filetype
filetype plugin indent on

"Enable sytax highlighting
syntax on

"==============================================================================
" Additional Vim Enhancements
"==============================================================================

"Quality of life improvements
set number          " Show line numbers
set relativenumber  " Show relative line numbers (helps with movement commands)
set ruler           " Show cursor position
set showcmd         " Show incomplete commands
set wildmenu        " Better command-line completion
set incsearch       " Show matches while typing search pattern
set hlsearch        " Highlight all search matches
set ignorecase      " Case-insensitive search
set smartcase       " Case-sensitive if search contains uppercase

"Indentation
set autoindent      " Copy indent from current line when starting a new line
set smartindent     " Smart autoindenting when starting a new line
set expandtab       " Use spaces instead of tabs
set shiftwidth=4    " Number of spaces for each indent
set tabstop=4       " Number of spaces that a <Tab> counts for
set softtabstop=4   " Number of spaces that a <Tab> counts for while editing

"Useful mappings
nnoremap <space> za         " Space to toggle folds
nnoremap <C-s> :w<CR>      " Ctrl+s to save in normal mode
inoremap <C-s> <Esc>:w<CR> " Ctrl+s to save in insert mode

"Keep cursor centered when searching
nnoremap n nzzzv
nnoremap N Nzzzv

"Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

"Better vertical movement
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
