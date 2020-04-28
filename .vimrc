call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
" Initialize plugin system
call plug#end()
map <F2> :NERDTreeToggle<CR>
