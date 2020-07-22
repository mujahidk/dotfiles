set nu
set rnu

syntax on

set colorcolumn=99
set cursorline

set tabstop=2
set shiftwidth=2
set expandtab

autocmd BufNewFile,BufRead Jenkins* set syntax=groovy

" F5 key for listing buffers and giving option to enter buffer #
:nnoremap <F5> :buffers<CR>:buffer<space>
