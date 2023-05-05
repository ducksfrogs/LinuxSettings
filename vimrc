set number
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'

call plug#begin()

Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'

" Install your UIs
Plug 'Shougo/ddc-ui-native'
"
" " Install your sources
Plug 'Shougo/ddc-source-around'
"
" " Install your filters
Plug 'Shougo/ddc-matcher_head'
Plug 'Shougo/ddc-sorter_rank'


call plug#end()

" Customize global settings
"
" You must set the default ui.
" Note: native ui
" https://github.com/Shougo/ddc-ui-native
call ddc#custom#patch_global('ui', 'native')

" Use around source.
" https://github.com/Shougo/ddc-source-around
call ddc#custom#patch_global('sources', ['around'])

" Use matcher_head and sorter_rank.
" https://github.com/Shougo/ddc-matcher_head
" https://github.com/Shougo/ddc-sorter_rank
call ddc#custom#patch_global('sourceOptions', #{
      \ _: #{
      \   matchers: ['matcher_head'],
      \   sorters: ['sorter_rank']},
      \ })

" Change source options
call ddc#custom#patch_global('sourceOptions', #{
     \   around: #{ mark: 'A' },
     \ })
call ddc#custom#patch_global('sourceParams', #{
     \   around: #{ maxSize: 500 },
     \ })

" Customize settings on a filetype
call ddc#custom#patch_filetype(['c', 'cpp'], 'sources',
     \ ['around', 'clangd'])
call ddc#custom#patch_filetype(['c', 'cpp'], 'sourceOptions', #{
     \   clangd: #{ mark: 'C' }, 
     \ }) 
call ddc#custom#patch_filetype('markdown', 'sourceParams', #{
     \  around: #{ maxSize: 100 }, 
     \ })

" Mappings
"    <TAB>: completion.
inoremap <silent><expr> <TAB>
\ pumvisible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~#'\s')?
\ '<TAB>' : ddc#map#manual_complete()
                      
" <S-TAB>: completion back.
inoremap <expr><S-TAB> pumvisible() ? '<C-p>' : '<C-h>'
"  Use ddc.
call ddc#enable()
