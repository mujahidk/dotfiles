set nocompatible

set nu
set rnu

syntax on

set colorcolumn=99
set cursorline

set tabstop=2
set shiftwidth=2
set expandtab

" Display Customization
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white

autocmd BufNewFile,BufRead Jenkins* set syntax=groovy

" F5 key for listing buffers and giving option to enter buffer #
:nnoremap <F5> :buffers<CR>:buffer<space>
:nnoremap <F2> :set paste!<CR>
