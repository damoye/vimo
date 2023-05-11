call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'mileszs/ack.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
colorscheme molokai
set autowrite
set backspace=indent,eol,start
set foldmethod=syntax
set foldnestmax=1
set hlsearch
set incsearch
set list
set listchars=tab:>\ ,trail:-
set maxmempattern=10000
set nofoldenable
set noshowmode
set noswapfile
set number
set shiftwidth=4
set tabstop=4
set wildignore=*/vendor/*
set wildmenu
set wildmode=longest:full,full
let g:SuperTabDefaultCompletionType="context"
let g:ctrlp_working_path_mode = 0
let g:go_list_type="quickfix"
let g:go_metalinter_autosave=1
let mapleader=" "
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-F> :NERDTreeFind<CR>
nmap <C-N> :NERDTreeToggle<CR>
nmap <Leader>a :cclose<CR>
nmap <Leader>m :cprevious<CR>
nmap <Leader>n :cnext<CR>
nmap <Leader>b :<C-u>call <SID>build_go_files()<CR>
nmap <Leader>c <Plug>(go-coverage-toggle)
nmap <Leader>d <Plug>(go-def-split)
nmap <Leader>e <Plug>(go-rename)
nmap <Leader>f <Plug>(go-referrers)
nmap <Leader>i <Plug>(go-info)
nmap <Leader>r <Plug>(go-run)
nmap <Leader>s <Plug>(go-implements)
nmap <Leader>t <Plug>(go-test)
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
