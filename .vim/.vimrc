

"NeoBundleの導入"
set nocompatible
filetype off

if has('vim_starting')
	set runtimepath+=~/vimsettings/.vim/bundle/neobundle.vim
	call neobundle#begin(expand('~/vimsettings/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'scrooloose/nerdtree'


NeoBundle 'haya14busa/incsearch-fuzzy.vim'
map z/ <Plug>(incsearch-fuzzyspell-/)
map z? <Plug>(incsearch-fuzzyspell-?)
map zg/ <Plug>(incsearch-fuzzyspell-stay)

call neobundle#end()

filetype plugin indent on
