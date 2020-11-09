call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'ycm-core/YouCompleteMe'
" Initialize plugin system
call plug#end()

" ---------------------custom shortcuts --------------

au FileType html let b:AutoPairs = AutoPairsDefine({'<!--' : '-->', '{%':'%}'})


" NerdTree
map <F2> :NERDTreeToggle<CR>


" color scheme seoul256
let g:seoul256_background = 234
colo seoul256

" ale config
let g:ale_fixers = {
\ "*": ['remove_trailing_lines','trim_whitespaces'],
\ 'python':['black']
\}

set number

" jedi-vim config
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures=1

" Enable folding
set foldmethod=indent
set foldlevel=99

" Cancel default behavior of d, D, c, C
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
