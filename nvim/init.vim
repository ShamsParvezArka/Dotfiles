filetyp plugin indent on
syntax on

" BASIC
set clipboard=unnamedplus
set cursorline
hi curosrline term=bold cterm=bold guibg=Gray
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
set list
set listchars+=tab:··,trail:·
set guicursor+=a:blinkon1

" KEYMAP
map <C-s> :w<CR>
map ff :Telescope find_files hidden=true<CR>
map fb :Telescope buffers<CR>
map <S-t> :FloatermNew<CR> 
map <C-x> :%s/
inoremap <C-h> <Left>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
nnoremap <Tab> gt
nnoremap <S-Tab> gT nnoremap <C-j> :m .+1<CR>== nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

call plug#begin('/home/arka/.config/nvim/plugged/')
" UTILITIES
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'voldikss/vim-floaterm'

" COLOR SCHEMES
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" COLOR SCHEME SETUP
highlight Normal ctermbg=none
highlight NonText ctermbg=none
colorscheme gruvbox 
set background=dark
let g:airline_theme='gruvbox'
hi FloatermBorder guibg=none guifg=none
hi Normal guibg=NONE ctermbg=NONE
