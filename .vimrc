set background=dark
set nocompatible
filetype off
syntax on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'rust-lang/rust.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'leafgarland/typescript-vim'
"Bundle 'cespare/vim-toml'
call vundle#end()
filetype plugin on
"au BufNewFile,BufRead *.rs set filetype=rust
"au BufNewFile,BufRead *.toml set filetype=toml
"au BufNewFile,BufRead *.ts set filetype=typescript
