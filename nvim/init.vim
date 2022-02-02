"" -- Plugins --
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()


"" -- Settings --
set number
set noswapfile
set mouse=a
set wrap
set wrapmargin=8
set title
set autoindent
set linebreak
