set nocompatible

set nu
set rnu

syntax on

set colorcolumn=99
set cursorline

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set nowrap

set listchars=tab:>\ ,trail:-,eol:$

filetype indent on

" Display Customization
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white

autocmd BufNewFile,BufRead Jenkins* set syntax=groovy
autocmd BufNewFile,BufRead *.hcl set syntax=tf

"F5 key for listing buffers and giving option to enter buffer #
:nnoremap <F2> :set paste!<CR>
:nnoremap <F3> :set list!<CR>
:nnoremap <F5> :buffers<CR>:buffer<space>

imap ;jsl @Library('jenkins-shared-lib@develop') _

set suffixesadd+=.groovy
set suffixesadd+=.java
set suffixesadd+=.yaml
set suffixesadd+=.yml

set path+=**
set path+=~/Projects/Work/jenkins/jenkins-shared-lib/

"map <silent><Leader>g :call setbufvar(winbufnr(popup_atcursor(systemlist("cd " . shellescape(fnamemodify(resolve(expand('%:p')), ":h")) . " && git log --no-merges -n 1 -L " . shellescape(line("v") . "," . line(".") . ":" . resolve(expand("%:p")))), { "padding": [1,1,1,1], "pos": "botleft", "wrap": 0 })), "&filetype", "git")<CR>

"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 20
