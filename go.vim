set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vundlevim/vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'fatih/vim-go'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sirver/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
colorscheme solarized
set autowrite
set background=dark
set clipboard=unnamedplus
set foldmethod=syntax
set foldnestmax=1
set list
set nofoldenable
set noswapfile
set shiftwidth=4
set tabstop=4
let g:SuperTabDefaultCompletionType="context"
let g:go_fmt_command="goimports"
let g:go_fmt_experimental=1
let g:go_list_type="quickfix"
let g:go_metalinter_autosave=1
let g:solarized_termcolors=256
let mapleader=" "
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-N> :NERDTreeToggle<CR>
nmap <Leader>a :cclose<CR>
nmap <Leader>m :cprevious<CR>
nmap <Leader>n :cnext<CR>
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
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
