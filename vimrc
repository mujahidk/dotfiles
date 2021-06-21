set nocompatible

set number
set rnu
set colorcolumn=99
set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set nowrap
set showmatch
set splitbelow
set splitright
set t_Co=256
set ruler
set showtabline=1
set encoding=utf-8
set fileencoding=utf-8

set background=dark

syntax on
set listchars=tab:»·,trail:·,eol:$
au! BufWritePost $MYVIMRC source %

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  Plug 'pprovost/vim-ps1'

  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  Plug 'NLKNguyen/papercolor-theme'
  Plug 'vim-airline/vim-airline'

  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'tpope/vim-surround'

  Plug 'machakann/vim-highlightedyank'
call plug#end()

colorscheme PaperColor
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'PaperColor.dark': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }

let g:UltiSnipsExpandTrigger="<tab>"

highlight MatchParen cterm=bold ctermbg=red ctermfg=none
highlight CursorLine cterm=None ctermbg=236 ctermfg=None
highlight Comment cterm=italic

filetype indent on

autocmd BufNewFile,BufRead Jenkins* set syntax=groovy
autocmd BufNewFile,BufRead *.hcl set syntax=tf

nnoremap <F2> :set paste!<CR>
nnoremap <F3> :set list!<CR>
"F5 key for listing buffers and giving option to enter buffer #
" nnoremap <F5> :buffers<CR>:buffer<space>
nnoremap <F5> :Buffers<CR>
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nnoremap <C-p> :Files<CR>

nnoremap n nzz
nnoremap N Nzz

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>x :noh<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Simplify window resizing
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>
nnoremap <M-j> :resize +2<CR>
nnoremap <M-k> :resize -2<CR>

" One less key window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <F28> :bd<CR>

:ab jsl @Library('jenkins-shared-lib@develop') _
:ab jsb #!/usr/bin/env groovy

set suffixesadd+=.groovy
set suffixesadd+=.java
set suffixesadd+=.yaml
set suffixesadd+=.yml

set path+=**
set path+=~/Projects/Work/jenkins/jenkins-shared-lib/vars/

let g:airline_powerline_fonts = 1

luafile ~/.config/nvim/lsp_config.lua
" set completeopt-=preview

autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc

lua <<EOF
require'nvim-treesitter.configs'.setup {
    -- Modules and its options go here
    ensure_installed = 'all',
    highlight = { enable = true },
    incremental_selection = { enable = true }
}
EOF

