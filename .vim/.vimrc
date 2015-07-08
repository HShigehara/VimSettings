"============================================================================
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

"ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
"unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'

" Scalaのシンタックスハイライト
NeoBundle 'derekwyatt/vim-scala'

"コメントアウトを簡単にする
NeoBundle 'tyru/caw.vim'

NeoBundle 'haya14busa/incsearch-fuzzy.vim'
map z/ <Plug>(incsearch-fuzzyspell-/)
map z? <Plug>(incsearch-fuzzyspell-?)
map zg/ <Plug>(incsearch-fuzzyspell-stay)

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
"============================================================================

"==================================================================================
"インデント関係
set noexpandtab "タブ入力を空白入力に置き換えない
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set formatoptions+=mM "日本語の行の連結時には空白を入力しない
"==================================================================================

"======================================================================-
"ウインドウ設定
set number "行番号を表示

set ruler "右下に表示される行・列の番号を表示する

set showcmd "コマンドを最下部に表示する

set laststatus=2 "ステータスラインを0:表示しない 1:2つ以上ウインドウがあるときだけ表示 2:常に表示

" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"======================================================================-

"=======================================
"フォント設定
"Windowsの場合
if has('win32') || has('win64')
    set guifont=IPA Pゴシック:h16
    set guifontwide=IPA Pゴシック:h16
    "set columns=160
    "set lines=80
else
    set guifont=Ricty\ 16
    set guifontwide=Ricty\ 16
    "set columns=160
    "set lines=80
endif
"=======================================

"========================================================================
"表示関係
set ambiwidth=double "全角記号の表示が変なのを解消

if has('multi_byte_ime') || has('xim') "マルチバイト文字を使った時に警告
	highlight Cursor guifg=NONE guibg=White
	highlight CursorIM guifg=NONE guibg=DarkRed
endif

" 挿入モード終了時に IME 状態を保存しない
inoremap <silent> <Esc> <Esc>
inoremap <silent> <C-[> <Esc>
" 「日本語入力固定モード」切り替えキー
inoremap <silent> <C-j> <C-^>挿入モード時にIME状態を保存しない

"inoremap <silent> <Esc> <Esc>
"inoremap <silent> <C-[> <Esc>
"「日本語入力固定モード」切り替えキー
"inoremap <silent> <C-j> <C-^>

"シンタックスハイライト
syntax on
set nohlsearch
set cursorline
"========================================================================

"===================================================================
"検索関係
"インクリメンタルサーチを有効にする
set incsearch

set ignorecase "小文字の検索でも大文字も見つかるようにする
set smartcase "ただし大文字も含めた検索の場合はそのとおりに検索する

set wrapscan "行末まで検索したら先頭に戻る

set hlsearch "検索結果をハイライトする
"===================================================================

"==================================================================
set autoread "内容が変更されたら自動的に再読み込み
set hidden "編集中でも他のファイルを開けるようにする
set backspace=indent,eol,start "バックスペースキーで行頭を削除
set nostartofline "括弧を閉じた時に一時的に対応する括弧に移動
set nobackup "バックアップを作成しない
set noswapfile "swapファイルを作成しない
"==================================================================

"========================試験的==========================
"OSのクリップボードを使う
set clipboard+=unnamed
set clipboard=unnamed

"<F5>を押したらCのコンパイルと実行
command! Gcc call s:Gcc()
nmap <F5> :Gcc<CR>

function! s:Gcc()
	:w
		:!gcc % -o %:r -lm
		:!./%:r
		endfunction

"<F6>を押したらC++のコンパイルと実行
command! Gpp call s:Gpp()
nmap <F6> :Gpp<CR>

function! s:Gpp()
  :w
    :!g++ % -o %:r
    :!./%:r
    endfunction

"<F7>を押したらJavaのコンパイルと実行
command! Java call s:Java()
nmap <F7> :Java<CR>

function! s:Java()
  :w
    :!javac %
    :!java %:r
    endfunction

"<F8>を押したらTeXのコンパイルと表示
command! Platex call s:Platex()
nmap <F8> :Platex<CR>

function! s:Platex()
  :w
    :!platex %
    :!dvipdfmx %:r.dvi
    :!evince %:r.pdf
    endfunction

"<F9>を押したらPythonを実行
command! Python call s:Python()
nmap <F9> :Python<CR>

function! s:Python()
    :w
        :!python %
        endfunction
