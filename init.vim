call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'ap/vim-css-color'
call plug#end()


" nvim defaults
set clipboard+=unnamedplus
set nohlsearch " disable highlights after exiting search
" Tab switches
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt


" coc.nvim shortcuts
noremap <leader>oi :CocCommand editor.action.organizeImport<CR> " Java organizeImport

" Hybrid Line Numbering- Relative in Normal, Number in Insert
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" NerdTree
map <F2> :NERDTreeToggle<CR>

" Theme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1
colorscheme gruvbox
set background=dark " setting dark mode

" AutoPairs
au FileType html let b:AutoPairs = AutoPairsDefine({'<!--' : '-->', '{%' : '%}'})

