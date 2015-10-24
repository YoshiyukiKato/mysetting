syntax on
set nobackup
set encoding=utf-8
set enc=utf-8
set fenc=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-2,cp932,sjis,iso-2022-jp,euc-jp
set fileformats=unix,mac,dos
set autoindent
set number
set incsearch
set ignorecase
set showmatch
set showmode
set title
set ruler
set expandtab
set tabstop=4
set shiftwidth=4
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
colorscheme molokai

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
   
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
" NERDTreeを設定 
NeoBundle 'scrooloose/nerdtree'

" シンタックス関係
NeoBundle 'leshill/vim-json'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'lunaru/vim-less'
NeoBundle 'tpope/vim-pathogen'

" NeoBundle 'andrep/vimacs'
call neobundle#end()
	 
" Required:
filetype plugin indent on
	  
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
	   
"-------------------------
" End Neobundle Settings.
"-------------------------

"-------------------------
" NERDTreeのショートカット
"-------------------------

nnoremap <silent><C-e> :NERDTreeToggle<CR>

"----------------------------------------------------
"" Emacs風関係
"----------------------------------------------------
"" コマンド入力中断
imap <silent> <C-g> <ESC><ESC><ESC><CR>i

" 画面分割
" imap <silent> <C-x>1 <ESC>:only<CR>i
" imap <silent> <C-x>2 <ESC>:sp<CR>i
" imap <silent> <C-x>3 <ESC>:vsp<CR>i
" imap <silent> <C-x>o <ESC><C-w>w<CR>i
" imap <silent> <C-x>p <ESC><C-w>p<CR>i
"
" " 消去、編集
" imap <C-k> <ESC>d$i
" imap <C-y> <ESC>pi
" imap <C-d> <ESC>xi
"
" " 移動
" imap <C-a>  <Home>
" imap <C-e>  <End>
" imap <C-b>  <Left>
" imap <C-f>  <Right>
" imap <C-n>  <Down>
" imap <C-p>  <UP>
" "imap <ESC>< <ESC>ggi
" "imap <ESC>> <ESC>Gi
"
" " ファイル
" imap <C-c><C-c>  <ESC>:qa<CR>
" imap <C-x><C-c>  <ESC>:qa!<CR>
" imap <C-w><C-w>  <ESC>:w<CR>
" imap <C-x><C-w>  <ESC>:w!<CR>
" imap <C-x><C-f>  <ESC>:e 
"
imap <C-x><C-s>	 <ESC>:w!<CR>
" " エラーリカバリ
" " imap <C-/> <ESC>ui
"
" " その他
" map  <C-x><C-e>  :Explore<CR>
