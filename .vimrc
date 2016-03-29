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

" seting default tab/space
set expandtab
set tabstop=4
set shiftwidth=4

" setting specific tab/space
"" languages
autocmd! FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType python setlocal shiftwidth=2 tabstop=2 softtabstop=2

"" markup/markdown
autocmd! FileType jade setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType less setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType md setlocal shiftwidth=2 tabstop=2 softtabstop=2

" 全角スペース絶許
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray

" ~/.vim/colors/molokai
colorscheme molokai

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundle$B$G4IM}$9$k%G%#%l%/%H%j$r;XDj(B
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle$B<+BN$r(Bneobundle$B$G4IM}(B
NeoBundleFetch 'Shougo/neobundle.vim'
   
" $B:#8e$3$N$"$?$j$KDI2C$N%W%i%0%$%s$r$I$s$I$s=q$$$F9T$-$^$9!*!*(B"
" NERDTree$B$r@_Dj(B 
NeoBundle 'scrooloose/nerdtree'

" $B%7%s%?%C%/%94X78(B
NeoBundle 'leshill/vim-json'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'lunaru/vim-less'
NeoBundle 'tpope/vim-pathogen'

NeoBundle "pangloss/vim-javascript"
NeoBundle "mxw/vim-jsx"
NeoBundle "othree/yajs.vim"

" NeoBundle 'andrep/vimacs'
call neobundle#end()
	 
" Required:
filetype plugin indent on
	  
" $BL$%$%s%9%H!<%k$N%W%i%0%$%s$,$"$k>l9g!"%$%s%9%H!<%k$9$k$+$I$&$+$r?R$M$F$/$l$k$h$&$K$9$k@_Dj(B
" $BKh2sJ9$+$l$k$H<YKb$J>l9g$b$"$k$N$G!"$3$N@_Dj$OG$0U$G$9!#(B
NeoBundleCheck
	   
"-------------------------
" End Neobundle Settings.
"-------------------------

"-------------------------
" NERDTree$B$N%7%g!<%H%+%C%H(B
"-------------------------

nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <C-n> gt
nnoremap <C-p> gT
"----------------------------------------------------
"" Emacs$BIw4X78(B
"----------------------------------------------------
"" $B%3%^%s%IF~NOCfCG(B
imap <silent> <C-g> <ESC><ESC><ESC><CR>i

" $B2hLLJ,3d(B
" imap <silent> <C-x>1 <ESC>:only<CR>i
" imap <silent> <C-x>2 <ESC>:sp<CR>i
" imap <silent> <C-x>3 <ESC>:vsp<CR>i
" imap <silent> <C-x>o <ESC><C-w>w<CR>i
" imap <silent> <C-x>p <ESC><C-w>p<CR>i
"
" " $B>C5n!"JT=8(B
" imap <C-k> <ESC>d$i
" imap <C-y> <ESC>pi
" imap <C-d> <ESC>xi
"
" " $B0\F0(B
" imap <C-a>  <Home>
" imap <C-e>  <End>
" imap <C-b>  <Left>
" imap <C-f>  <Right>
" imap <C-n>  <Down>
" imap <C-p>  <UP>
" "imap <ESC>< <ESC>ggi
" "imap <ESC>> <ESC>Gi
"
" " $B%U%!%$%k(B
" imap <C-c><C-c>  <ESC>:qa<CR>
" imap <C-x><C-c>  <ESC>:qa!<CR>
" imap <C-w><C-w>  <ESC>:w<CR>
" imap <C-x><C-w>  <ESC>:w!<CR>
" imap <C-x><C-f>  <ESC>:e 
"
imap <C-x><C-s>	 <ESC>:w!<CR>
" " $B%(%i!<%j%+%P%j(B
" " imap <C-/> <ESC>ui
"
" " $B$=$NB>(B
" map  <C-x><C-e>  :Explore<CR>
