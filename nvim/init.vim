set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set splitright
set clipboard=unnamed
set hls

if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if deinload_steate('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on
syntax enable



