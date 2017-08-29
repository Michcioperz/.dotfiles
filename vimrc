set encoding=utf-8
set background=dark
set nocompatible
filetype off
syntax on
" Vundle Init {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'scrooloose/syntastic'
Plugin 'rust-lang/rust.vim'
Bundle 'rhysd/vim-crystal'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'leafgarland/typescript-vim'
Plugin 'cespare/vim-toml'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'wannesm/wmgraphviz.vim'
call vundle#end()
colorscheme solarized
" }}}
au BufNewFile,BufRead *.rs set filetype=rust
au BufNewFile,BufRead *.toml set filetype=toml
au BufNewFile,BufRead *.cr set filetype=crystal
au BufNewFile,BufRead *.ts set filetype=typescript
set tabstop=4
set softtabstop=2
set shiftwidth=2
set expandtab
autocmd FileType html,crystal,ruby,xml,css,typescript,javascript,rust,php setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType python setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=2
autocmd FileType make,cpp setlocal noexpandtab tabstop=4 softtabstop=4
autocmd FileType go setlocal noexpandtab tabstop=2 softtabstop=2
set modelines=1
set number
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set foldenable
set foldlevelstart=7
set foldmethod=syntax
filetype plugin indent on
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
set conceallevel=1
inoremap jk <esc>
set laststatus=2
let g:airline#extensions#syntastic#enabled = 1
let g:airline_powerline_fonts = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_checkers = ['gcc', 'cppcheck']
" vim:foldmethod=marker:foldlevel=0
