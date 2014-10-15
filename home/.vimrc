set encoding=utf-8
set nocompatible

"クリップボードが効かない
set clipboard=unnamed,autoselect

"バックアップ/スワップファイルを作成する/しない
set nobackup
set noswapfile

" visulaモードで選択してからのインデント調整で調整後に選択範囲を開放しない
vnoremap > >gv
vnoremap < <gv

" 画面表示の設定
set number         " 行番号を表示する
"set cursorline     " カーソル行の背景色を変える
"set cursorcolumn   " カーソル位置のカラムの背景色を変える
"set laststatus=2   " ステータス行を常に表示
set cmdheight=2    " メッセージ表示欄を2行確保
set showmatch      " 対応する括弧を強調表示
set helpheight=999 " ヘルプを画面いっぱいに開く
"set list           " 不可視文字を表示
" 不可視文字の表示記号指定
"set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

" カーソル移動関連の設定
set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
set scrolloff=8                " 上下8行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

" ファイル処理関連の設定
set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   " 外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
set noswapfile " ファイル編集中にスワップファイルを作らない

" 検索/置換の設定
set hlsearch   " 検索文字列をハイライトする
set incsearch  " インクリメンタルサーチを行う
set ignorecase " 大文字と小文字を区別しない
set smartcase  "大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan   " 最後尾まで検索を終えたら次の検索で先頭に移る
set gdefault   " 置換の時 g オプションをデフォルトで有効にする


" HTMLのインデントを無効にする.
autocmd FileType html set indentexpr
autocmd FileType xhtml set indentexpr

" タブ/インデントの設定
set expandtab     " タブ入力を複数の空白入力に置き換える
set tabstop=2     " 画面上でタブ文字が占める幅
set shiftwidth=2  " 自動インデントでずれる幅
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent    " 改行時に前の行のインデントを継続する
"set smartindent   "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

" 動作環境との統合関連の設定
" OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set clipboard=unnamed,unnamedplus
" マウスの入力を受け付ける
"set mouse=a
" Windows でもパスの区切り文字を / にする
set shellslash
" インサートモードから抜けると自動的にIMEをオフにする
"set iminsert=2

" コマンドラインの設定

" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=10000

" ビープの設定
"ビープ音すべてを無効にする
set visualbell t_vb=
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない

" タブ幅の設定
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" 前回終了したカーソル行に移動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" 行末の空白を自動削除
autocmd BufWritePre * :%s/\s\+$//e

" 改行コードの自動認識
set fileformats=unix,dos,mac
" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
  set ambiwidth=double
endif


filetype off
"if has('vim_starting')
"  set runtimepath+=~/.vim/bundle/neobundle.vim
"  call neobundle#rc(expand('~/.vim/bundle/'))
"endif

" originalrepos on github
"NeoBundle 'Shougo/neobundle.vim'
"NeoBundle 'Shougo/vimproc'
"NeoBundle 'VimClojure'
"NeoBundle 'Shougo/vimshell'
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Shougo/neosnippet'
"NeoBundle 'jpalardy/vim-slime'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'https://bitbucket.org/kovisoft/slimv'
"NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'bbatsov/rubocop'
"NeoBundle 'kana/vim-smartinput'
"NeoBundle 'tpope/vim-endwise'
"NeoBundle 'romanvbabenko/rails.vim'

filetype plugin indent on     " required!
filetype indent on

syntax on
