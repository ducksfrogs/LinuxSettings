if g:dein#_cache_version !=# 420 || g:dein#_init_runtimepath !=# '/home/ma/.config/nvim,/etc/xdg/nvim,/home/ma/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/local/share/nvim/runtime,/usr/local/lib/nvim,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/ma/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/ma/.config/nvim/after,/home/ma/.config/nvim/repos/github.com/Shougo/dein.vim/' | throw 'Cache loading error' | endif
let [s:plugins, s:ftplugin] = dein#min#_load_cache_raw(['/home/ma/.config/nvim/init.vim', '/home/ma/.config/nvim/rc/dein.toml', '/home/ma/.config/nvim/rc/deinlazy.toml'])
if s:plugins->empty() | throw 'Cache loading error' | endif
let g:dein#_plugins = s:plugins
let g:dein#ftplugin = s:ftplugin
let g:dein#_base_path = '/home/ma/.config/nvim'
let g:dein#_runtime_path = '/home/ma/.config/nvim/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/ma/.config/nvim/.cache/init.vim'
let g:dein#_on_lua_plugins = {}
let &runtimepath = '/home/ma/.config/nvim,/etc/xdg/nvim,/home/ma/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/home/ma/.config/nvim/repos/github.com/Shougo/dein.vim,/home/ma/.config/nvim/.cache/init.vim/.dein,/usr/local/share/nvim/runtime,/home/ma/.config/nvim/.cache/init.vim/.dein/after,/usr/local/lib/nvim,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/ma/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/ma/.config/nvim/after,/home/ma/.config/nvim/repos/github.com/Shougo/dein.vim/'
filetype off
