au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

set ttymouse=sgr " wide monitor mouse fix

set exrc
set number
set relativenumber
syntax on
set mouse=a
set showtabline=2
set nohlsearch
set hidden
set noerrorbells

hi TabLine ctermbg=NONE ctermfg=lightblue cterm=bold
hi TabLineFill ctermbg=NONE ctermfg=darkmagenta cterm=bold
hi TabLineSel ctermbg=NONE ctermfg=165 cterm=bold,underline
hi Title ctermbg=NONE ctermfg=darkyellow cterm=NONE

" Shows column 80
set colorcolumn=80

" Removes trailing spaces
autocmd FileType c,cpp,java,php,py,html autocmd BufWritePre <buffer> %s/\s\+$//e

" indentation
set autoindent
set smartindent
set nowrap
" Sets tab as 4 spaces
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4

" for undo and reopening open file
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch
"set termguicolors
set scrolloff=8
set completeopt=menuone,noinsert,noselect

set background=dark
"highlight Normal guibg=none

nnoremap Q gT
nnoremap W gt

" c braces setup
inoremap {<CR> {<CR>}<Esc>ko

" reduce latency when escaping
set ttimeoutlen=10

" makefiles settings
autocmd Filetype make setlocal noexpandtab

" c files
autocmd BufRead,BufNewFile *.c,*.h setlocal cinoptions+=:0 " case statement indent fix
autocmd BufRead,BufNewFile *.c,*.h setlocal comments=s:/**,mb:**,ex:*/,s:/*,mb:**,ex:*/

packadd termdebug


call plug#begin('~/.vim/plugged')

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'OmniSharp/omnisharp-vim'

call plug#end()
