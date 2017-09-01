set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vundlevim/vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tmhedberg/simpylfold'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'yggdroot/indentLine'
call vundle#end()
colorscheme solarized
set clipboard=unnamedplus
set colorcolumn=80
set expandtab
set list
set nofoldenable
set noswapfile
set shiftwidth=4
set wildignore=*.pyc
let NERDTreeIgnore=['\.pyc$']
let g:jedi#force_py_version=3
let mapleader=" "
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-N> :NERDTreeToggle<CR>
