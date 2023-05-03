set number

if (!isdirectory(expand("$HOME/.cache/nvim/repos/github.com/Shougo/dein.vim")))
  call system(expand("mkdir -p $HOME/.cache/nvim/repos/github.com"))
  call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.cache/nvim/repos/github.com/Shougo/dein.vim"))
endif

set runtimepath+=~/.cache/nvim/repos/github.com/Shougo/dein.vim/
call dein#begin(expand('~/.cache/nvim'))
call dein#add('Shougo/dein.vim')

call dein#load_toml('~/.config/nvim/rc/dein.toml', {'lazy': 0})
call dein#load_toml('~/.config/nvim/rc/deinlazy.toml', {'lazy' : 1})


if dein#check_install()
  call dein#install()
  let pluginsExist=1
endif

call dein#end()
call dein#save_state()
			
