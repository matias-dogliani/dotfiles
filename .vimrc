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

"Se instalan con PlungInstall - Plug --> en un futuro pathogen  
call plug#begin('~/.vim/plugged') 

Plug 'morhetz/gruvbox' 
Plug 'mbbill/undotree'
" A YCM hay que compilarlo e instalar para el lenguaje que quiera
Plug 'https://github.com/ycm-core/YouCompleteMe' 
Plug 'https://github.com/jremmen/vim-ripgrep'  "De busqueda: is fast, stupdly fast
Plug 'https://github.com/ctrlpvim/ctrlp.vim' "File navigation 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'turbio/bracey.vim' , {'do': 'npm install --prefix server'}
call plug#end()


"Esquema de color 
colorscheme gruvbox
set background=dark 
let g:airline_theme='deus'

"Configuraciones de busqueda y nav
if executable ('rg')
    let g:rg_derive_root='true'
endif 
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-staged'] 
let g:ctrlp_use_caching = 0 
let g:ycm_autoclose_preview_window_after_completion =1 
let g:user_emmet_mode='a'
let g:user_emmet_leader_key=',' 
"Remaps
let mapleader=" " "Espacio para modo comando
nnoremap <leader>h :wincmd h<CR> 
nnoremap <leader>l :wincmd l<CR> 
nnoremap <leader>j :wincmd j<CR> 
nnoremap <leader>k :wincmd k<CR> 
nnoremap <leader>v :wincmd v <CR> 
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 20 <CR> 
nnoremap <leader>nv :vsp<SPACE>
nnoremap <leader>rg :Rg<SPACE>
nnoremap <leader>s /

nnoremap <silent>  <leader>+ :vertical resize +5<CR> 
nnoremap <silent>  <leader>- :vertical resize -5<CR> 
nnoremap <leader>q :q<CR>  
nnoremap <leader>w :w<CR> 
"para YCM 
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR> 
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

"Para el copypaste en otros lugares sin la numeracion
nnoremap <silent> <leader>u :set rnu! <bar> :set nu!<CR> 

"Cuesta acordarse del esc 
inoremap jk <esc> 

"Python 
autocmd FileType python nnoremap  <leader>r :update<bar>!python3 %<CR>

"autocmd FileType ipynb  nnoremap <silent> <leader> up  :! jup


