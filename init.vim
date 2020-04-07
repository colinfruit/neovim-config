
call plug#begin()

Plug 'scrooloose/nerdtree'

Plug 'morhetz/gruvbox'

Plug 'valloric/youcompleteme'

Plug 'brooth/far.vim'

Plug 'preservim/nerdcommenter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox

" close if nerdtree is the only pane
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-\> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" undo file changes after closing file
set undodir=~/.vimdid
set undofile

filetype plugin on

set number


:command SF Files
:command SL Lines

