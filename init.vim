set number

if (!isdirectory(expand("$HOME/.cache/nvim/repos/github.com/Shougo/dein.vim")))
  call system(expand("mkdir -p $HOME/.cache/nvim/repos/github.com"))
  call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.cache/nvim/repos/github.com/Shougo/dein.vim"))
endif

set runtimepath+=~/.cache/nvim/repos/github.com/Shougo/dein.vim/
call dein#begin(expand('~/.cache/nvim'))
call dein#add('Shougo/dein.vim')

call dein#add('Shougo/ddc.vim')
call dein#add('Shougo/ddc-ui-native')

call dein#add('Shougo/ddc-source-nvim-lsp')
call dein#add('Shougo/ddc-filter-sorter_rank')
call dein#add('Shougo/ddc-filter-matcher_head')
call dein#add('vim-denops/denops.vim')
call dein#load_toml('~/.config/nvim/rc/dein.toml', {'lazy': 0})
call dein#load_toml('~/.config/nvim/rc/deinlazy.toml', {'lazy' : 1})


if dein#check_install()
  call dein#install()
  let pluginsExist=1
endif

call dein#end()
call dein#save_state()
			

" Customize global settings

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
      \   around: #{ maxSize: 100 },
      \ })

" Mappings

" <TAB>: completion.
inoremap <silent><expr> <TAB>
\ pumvisible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
\ '<TAB>' : ddc#map#manual_complete()

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  pumvisible() ? '<C-p>' : '<C-h>'

" Use ddc.
call ddc#enable()

call ddc#custom#patch_global('sources', ['nvim-lsp'])
call ddc#custom#patch_global('sourceOptions', #{
      \   nvim-lsp: #{
      \     mark: 'lsp',
      \     forceCompletionPattern: '\.\w*|:\w*|->\w*' },
      \ })

" Use Customized labels
call ddc#custom#patch_global('sourceParams', #{
      \   nvim-lsp: #{ kindLabels: #{ Class: 'c' } },
      \ })
