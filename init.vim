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
Plug 'ap/vim-css-color'

 "Formatter
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

call plug#end()

call glaive#Install()

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

" show line number and relative
set number relativenumber

" tab
:set tabstop=4
:set shiftwidth=0
:set expandtab


" active theme
colorscheme tokyonight

" ----- EXTENSION CONFIGS --------
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

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

" UltiSnip
let g:UltiSnipsEditSplit="vertical"

" Formatter
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /home/potato/programs/google-java-format-1.15.0-all-deps.jar"

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
  autocmd FileType swift AutoFormatBuffer swift-format
augroup END
