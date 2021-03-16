"Configuracion basica 

syntax on 

set noerrorbells 
set tabstop=4 softtabstop=4
set shiftwidth=4 
set expandtab 
set smartindent 
set relativenumber 
set nu 
set nowrap
set nohlsearch " Que no se marque la busqueda
set noswapfile 
set nobackup 
set undodir=~/.vim/undodir 
set undofile 
set termguicolors 
set incsearch "Incremental search 
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey



"github.com/junegunn/vimplug

"Se instalan con PlungInstall 
call plug#begin('~/.vim/plugged') 

Plug 'morhetz/gruvbox' 
Plug 'mbbill/undotree'
" A YCM hay que compilarlo e instalar para el lenguaje que quiera
Plug 'https://github.com/ycm-core/YouCompleteMe' 
Plug 'https://github.com/jremmen/vim-ripgrep'  "De busqueda: is fast, stupdly fast
Plug 'https://github.com/ctrlpvim/ctrlp.vim' "File navigation 

call plug#end()


"Esquema de color 
colorscheme gruvbox
set background=dark 

"Configuraciones de busqueda y nav
if executable ('rg')
    let g:rg_derive_root='true'
endif 
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-staged'] 
let g:ctrlp_use_caching = 0 


"Remaps

let mapleader=" " "Espacio para modo comando
nnoremap <leader>h :wincmd h<CR> 
nnoremap <leader>l :wincmd l<CR> 
nnoremap <leader>j :wincmd j<CR> 
nnoremap <leader>k :wincmd k<CR> 
nnoremap <leader>v :wincmd v <CR> 
nnoremap <leader>pv :wincmd v<bar> : Ex <bar> :vertical resize 30 <CR> 
nnoremap <leader>rg: Rg<SPACE>

nnoremap <silent>  <leader>+ :vertical resize +5<CR> 
nnoremap <silent>  <leader>- :vertical resize -5<CR> 
"para YCM 
nnoremap <silent> <leader>gd : YcmCompleter GoTo<CR> 
nnoremap <silent> <leader>gf : YcmCompleter FixIt<CR>

