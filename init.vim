call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'psf/black', { 'branch': 'stable' }
" only for code-jump
Plug 'davidhalter/jedi-vim'
Plug 'tmhedberg/SimpylFold'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
Plug 'elkowar/yuck.vim'
call plug#end()

" ---- NVIM DEFAULTS ------
"  copy-paste with ctrl+c, ctrl+v, cut with ctrl+x
vnoremap <C-c> "+y
vnoremap <C-v> "+p
nnoremap <C-v> "+p
vnoremap <d> "_d
vnoremap <C-x> "+x

" disable highlights after exiting search
set nohlsearch

" Tab switches
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt

set number relativenumber

colorscheme tokyonight

" ----- EXTENSION CONFIGS --------
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" tokyonight theme
let g:tokyonight_style="night"

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right" 

" nerdtree toggle
map <F2> :NERDTreeToggle<CR>

" AutoPairs
au FileType html let b:AutoPairs = AutoPairsDefine({'<!--' : '-->', '{%' : '%}'})

" gruvbox
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1
set background=dark

" :Black on save *.py
autocmd BufWritePre *.py execute ':Black'
