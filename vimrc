set background=dark
set nocompatible
filetype off
syntax on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Bundle 'rhysd/vim-crystal'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'leafgarland/typescript-vim'
Plugin 'cespare/vim-toml'
Plugin 'pangloss/vim-javascript'
call vundle#end()
filetype plugin on
au BufNewFile,BufRead *.rs set filetype=rust
au BufNewFile,BufRead *.toml set filetype=toml
au BufNewFile,BufRead *.cr set filetype=crystal
au BufNewFile,BufRead *.ts set filetype=typescript
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
set conceallevel=1
