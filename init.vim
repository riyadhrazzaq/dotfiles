" Vim-Plug: Plugin manager setup
call plug#begin('~/.local/share/nvim/plugged')


" Python development
Plug 'psf/black', { 'branch': 'main' } " Autoformatter
Plug 'nvim-treesitter/nvim-treesitter'  " Better syntax highlighting
Plug 'jiangmiao/auto-pairs'   " Auto pair brackets and quotes
Plug 'tpope/vim-surround'

Plug 'preservim/nerdcommenter'

" theme
Plug 'joshdick/onedark.vim'

" File explorer
Plug 'preservim/nerdtree'

" Status line
Plug 'vim-airline/vim-airline'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()

" === Basic Settings ===
syntax on
set number          " Show line numbers
set relativenumber  " Show relative line numbers
set tabstop=4       " Tab width = 4 spaces
set shiftwidth=4    " Auto-indent width = 4 spaces
set expandtab       " Use spaces instead of tabs
set autoindent      " Auto-indent new lines

" Keybindings
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <F8> :w<CR>:!python3 %<CR>

" theme
colorscheme onedark

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Map <leader>yf to copy the file path with line number to the clipboard
nnoremap <leader>yf :let @+ = expand('%:p') . ':' . line('.')<CR>


lua << EOF
vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  },
}
require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
          "node_modules",
          "%.git",
          "__pycache__",
          "%.o", "%.a", "%.out", "%.class", "%.pyc", "%.pyo",
          "tests"
    }},
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}

require('telescope').load_extension('fzf')

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "bash", "lua" },
  highlight = { enable = true },
incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>", -- Start selection
          node_incremental = "<CR>", -- Expand selection
          scope_incremental = "<S-CR>", -- Expand to scope
          node_decremental = "<BS>", -- Shrink selection
        },
      }
}
EOF


set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=99

" Map Ctrl+V to paste from the system clipboard
nnoremap <C-v> "+p
vnoremap <C-c> "+y

" Map visual mode <leader>fs to search selected text
vnoremap <leader>fs y<cmd>Telescope live_grep search=<C-r>"<CR>
