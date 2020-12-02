"Configuracion basica 

syntax on 

set noerrorbells 
set tabstop=4 softtabstop=4
set shiftwidth=4 
set expandtab 
set smartindent 
set nu 
set nowrap 
set smartcase  "Case sensitive searching 
set noswapfile 
set nobackup 
set undodir=~/.vim/undodir 
set undofile 
set incsearch "Incremental search 

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"github.com/junegunn/vimplug

call plug#begin('~/.vim/plugged') 

Plug 'morhetz/gruvbox' 
Plug 'mbbill/undotree'
Plug 'https://github.com/ycm-core/YouCompleteMe'


call plug#end()

if executable ('rg')
    let g:rg_derive_root='true'
endif 

colorscheme gruvbox
set background=dark 
let mapleader = " " "Espacio para modo comando

nnoremap <leader>h :wincmd h<CR> 
nnoremap <leader>j :wincmd j<CR> 
nnoremap <leader>l :wincmd l<CR> 
nnoremap <leader>u :UndtreeShow<CR> 
nnoremap <silent>  <leader>+ :vertical resize +5<CR> 
nnoremap <silent>  <leader>- :vertical resize -5<CR> 

"para YCM 

nnoremap <silent> <leader>gd : YcmCompleter GoTo<CR> "Para saltar a def
nnoremap <silent> <leader>gf : YcmCompleter FixIt<CR>

