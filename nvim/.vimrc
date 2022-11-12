syntax off

filetype plugin indent on

set rnu
set modifiable
set autoindent
set undofile
set tabstop=4
set shiftwidth=4
set ic
set mouse=a
set hlsearch
set wrap
set linebreak

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
