filetyp plugin indent on
syntax on

" BASIC
set encoding=UTF-8
set clipboard=unnamedplus
set cursorline
hi curosrline term=bold cterm=bold guibg=Gray
set wrap
set modifiable
set termguicolors
set completeopt
set mouse=a
set rnu
set title
set ttimeoutlen=0
set tabstop=4
set shiftwidth=4
set autoindent 
set smartindent 
set undodir=/home/arka/.undo/
set undofile
set laststatus=2
set cmdheight=1

" set list
" set listchars+=tab:··,trail:·

" KEYMAP
map <C-s> :w<CR>
map <C-x> :%s/

call plug#begin('/home/arka/.config/nvim/plugged/')
" UTILITIES
Plug 'nvim-telescope/telescope.nvim'
map ff :Telescope find_files hidden=true<CR>

Plug 'nvim-lua/plenary.nvim'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdtree'
map <C-n> :NERDTree<CR>
" autocmd VimEnter * NERDTree | wincmd p
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" autocmd VimEnter * vertical resize 102
" augroup DIRCHANGE
"     au!
"     autocmd DirChanged global :NERDTreeCWD
" augroup END

Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
lua << EOF
require('bufferline').setup{}
EOF

Plug 'norcalli/nvim-colorizer.lua'
lua require'colorizer'.setup()

Plug 'windwp/nvim-autopairs'
lua require("nvim-autopairs").setup {}

" COLOR SCHEMES
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'overcache/NeoSolarized'
Plug 'vim-airline/vim-airline-themes'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()

" COLOR SCHEME SETUP
highlight Normal ctermbg=none
highlight NonText ctermbg=none
colorscheme gruvbox
set background=dark
let g:syntastic_vim_checkers = ['vint']
let g:airline_theme='gruvbox'
hi FloatermBorder guibg=none guifg=none
hi Normal guibg=NONE ctermbg=NONE
