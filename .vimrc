
let mapleader=";"

noremap <space> :
inoremap jk <Esc>
"noremap H ^
"noremap L $
" ;w to swith window
nnoremap <leader>w <c-w>
" ;f use CtrlP search file
map <Leader>f :CtrlPMRUFiles<CR>


call plug#begin('~/.vim/plugged')

"Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'

call plug#end()


"https://vimawesome.com/plugin/nerdtree-red
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map nt :NERDTreeToggle<CR>


" -------------ctrlp-settings---------------------
let g:ctrlp_custom_ignore = 'node_modules'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_buffer_func = {
    \ 'enter': 'Enter_ctrlp',
    \ 'exit':  'Leave_ctrlp',
    \ }

func! Enter_ctrlp()
    set laststatus=0
endfunc

func! Leave_ctrlp()
    set laststatus=2
endfunc




