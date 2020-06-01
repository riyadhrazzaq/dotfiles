call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-commentary'
" Initialize plugin system
call plug#end()

" custom shortcuts
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


