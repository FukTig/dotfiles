set number
set ruler
set scrolloff=3
set autoindent
set cindent
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=2
set encoding=utf8
set fileencodings=utf8,latain,cp932
set mouse=a
set incsearch
set nowrapscan
set history=1000
set textwidth=0
set hlsearch
set cursorline
set background=dark
set clipboard=unnamed,autoselect

map j gj
map k gk

"ColorScheme
syntax on
autocmd ColorScheme * highlight LineNr ctermfg=100
colorscheme hybrid

" Column char limit
execute "set colorcolumn=" . join(range(91, 95), ',')

filetype off
if has('vim_starting')
  if &compatible
    set nocompatible " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

"   " Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" ここにインストールしたいプラグインのリストを書く:
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'szw/vim-tags'
:

call neobundle#end()

" Reqiured:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap <Enter> <Plug>(EasyAlign)

" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>
