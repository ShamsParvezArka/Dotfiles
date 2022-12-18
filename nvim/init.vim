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

" KEYMAP
map <C-x> :%s/
map ff :Telescope find_files hidden=true<CR>
map fb :Telescope buffers<CR>
map <S-m> :NERDTreeToggle<CR>
map sv : vertical split<CR>

" PLUGINS
call plug#begin('/home/arka/.config/nvim/plugged/')
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-lua/popup.nvim'

let g:NERDTreeWinSize=20
" autocmd VimEnter * lua require("bufferline").setup {}
autocmd VimEnter * lua require("colorizer").setup()
autocmd VimEnter * lua require("nvim-autopairs").setup {}
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd VimEnter * lua require('telescope').load_extension('media_files')

" COLOR SCHEMES
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'overcache/NeoSolarized'
Plug 'lifepillar/vim-solarized8'
call plug#end()
	
" COLOR SCHEME SETUP
highlight Normal ctermbg=none
highlight NonText ctermbg=none
colorscheme solarized8_flat
set background=dark
let g:syntastic_vim_checkers = ['vint']
" let g:airline_theme='gruvbox'
hi FloatermBorder guibg=none guifg=none
hi Normal guibg=NONE ctermbg=NONE

