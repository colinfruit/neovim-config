
call plug#begin()

Plug 'scrooloose/nerdtree'

Plug 'morhetz/gruvbox'

Plug 'valloric/youcompleteme'

Plug 'brooth/far.vim'

call plug#end()

colorscheme gruvbox

" close if nerdtree is the only pane
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-\> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
