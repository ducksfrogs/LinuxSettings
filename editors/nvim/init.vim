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

if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
	call dein#end()
	call dein#save_state()
endif
"if !has('nvim') #  call dein#add('roxma/nvim-yarp')
"  call dein#add('roxma/nvim-yarp')
filetype plugin indent on
syntax enable


