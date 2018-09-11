"filetype on
"filetype indent on
"filetype plugin on

syntax on

set number			"行番号表示
set ruler			"現在位置を表示
set wrap

set laststatus=2	"ステータスラインを表示
set showcmd			"コマンドを表示
set title
set showmode
set wildmenu		"補完候補を表示
set wildmode=list:longest

set clipboard=unnamed,autoselect
set nobackup
set noundofile
set noswapfile
set hidden
set autoread		"他エディタでのファイル変更を即時反映

set go-=T

" 検索系
set ignorecase		"大文字小文字を区別しない
set smartcase		"大文字小文字の処理をスマートに
set wrapscan		"末尾まで来たら先頭へ
set incsearch		"インクリメータるサーチ
set hlsearch		"結果をハイライト
set showmatch		"対となるカッコを表示

set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab		"タブをスペースに置き換える

set shiftround		"インデントをshiftwidthの値の倍数に丸める？
set smartindent   "???

set tabpagemax=8
set showtabline=2

set backspace=2
set nf=
set scrolloff=3

set whichwrap=b,s,h,l,<,>,[,]
set formatoptions+=mM


nmap <C-tab> :tabnext<CR>
nmap <C-S-tab> :tabprevious<CR>

nmap <CR> o<ESC>


nmap j gj
nmap k gk
vmap j gj
vmap k gk

" 検索ハイライト一時消去
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" 検索語が画面の真ん中に来るようにする
nmap n nzz 
nmap N Nzz 
nmap * *zz 
nmap # #zz 
nmap g* g*zz
nmap g# g#zz

" helpショートカット
noremap <C-h> :<C-u>help<Space>

" 開いてるファイルにディレクトリ異動
au BufEnter * execute 'lcd ' fnameescape(expand('%:p:h'))


" 文字コードを指定して開き直す
command! Cp932     edit ++enc=cp932<CR>
command! Utf8      edit ++enc=utf-8<CR>
command! Eucjp     edit ++enc=euc-jp<CR>
command! Iso2022jp edit ++enc=iso2022jp<CR>
command! Jis       Iso2022jp
command! Sjis      Cp932

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" neocomplcacheの設定
let g:neocomplcache_enable_at_startup = 1	"vim起動時に有効化
let g:neocomplcache_enable_smart_case = 1	"smartcase
"let g:neocomplcache_enable_camel_case_completion = 1	"ASの変数とかに使えそう。大文字でワイルドカード

" zencodingの設定
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1
let g:user_zen_settings = { 'lang' : 'ja'}

"set noimdisableactivate

