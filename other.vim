Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>g :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>d :YcmCompleter GoTo<CR>
nnoremap <leader>k :YcmCompleter GetDoc<CR>
set statusline=%{fugitive#statusline()}%F%m%=%l/%L%{SyntasticStatuslineFlag()}
