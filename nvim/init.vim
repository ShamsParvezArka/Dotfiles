filetyp plugin indent on
syntax on

" BASIC
set encoding=UTF-8
set clipboard=unnamedplus
" set cursorline
" hi curosrline term=bold cterm=bold guibg=Gray
set wrap
set modifiable
set termguicolors
set completeopt
set mouse=a
set nu
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
map <M-m> :NERDTreeToggle<CR>
map sv : vertical split<CR>

" PLUGINS
call plug#begin('/home/arka/.config/nvim/plugged/')
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'windwp/nvim-autopairs'
Plug 'kevinhwang91/rnvimr'

let g:NERDTreeWinSize=23
" autocmd VimEnter * lua require("bufferline").setup {}
autocmd VimEnter * lua require("colorizer").setup()
autocmd VimEnter * lua require("nvim-autopairs").setup {}
" autocmd VimEnter * lua require("hologram").setup{auto_display = true}
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" COLOR SCHEMES
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-solarized8'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'projekt0n/github-nvim-theme'
Plug 'NLKNguyen/papercolor-theme'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'rebelot/kanagawa.nvim'
Plug 'edluffy/hologram.nvim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'nyoom-engineering/oxocarbon.nvim'
call plug#end()
	
" COLOR SCHEME SETUP
highlight Normal ctermbg=NONE 
highlight NonText ctermbg=NONE
colorscheme gruvbox
set background=dark
let g:syntastic_vim_checkers = ['vint']
let g:airline_theme='gruvbox'
hi Normal guibg=NONE ctermbg=NONE
