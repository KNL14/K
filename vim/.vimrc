
"   cscope -RUbq
"
"   http://jen6.tistory.com/119


"# ====================================================================== 
"#
"# VIM Key Info
"#
"# < Auto complete >
"#	Ctrl+p or Ctrl+n (in the Input Mode)
"#
"# < Undo >
"#	u	    : undo
"#	Ctrl+r	    : ReDo
"#
"# < input >
"#	a : after cursor,		    A : after line
"#	i : before cursor,		    I : before line
"#	o : below the cursor,		    O : above the cursor 
"#
"# < move >
"#
"# 
"# < folding / unfolding >
"#	zf : 
"#	zi :
"#	zv :
"#	zo :
"#	zc : 
"#	zM : 
"#	zR : 
"#	zd : 
"#
"# < delete >
"#
"# < copy >
"#
"# < search >
"#
"# < replace a character >
"#
"# < replace string >
"#	:s/old/new : 
"#	:s/old/new/g : 
"#	:%s/old/new/gc : 
"#
"# < mark position >
"#	mx : 
"#	`` : 
"#	`x : 
"#	'' : 
"#	'x :
"#
"# < Window Split >
"#	:sp : 
"#	:vsp : 
"#	Ctrl + w, [ H J K L ] : 
"#	Ctrl + w, W : 
"#
"# < arrow key > 
	nmap <C-Left> <C-W><<C-W><
	nmap <C-Right> <C-W>><C-W>>
	nmap <C-Up> <C-W>-<C-W>-
	nmap <C-Down> <C-W>+<C-W>+
"#
"# < column mode >
"#	Ctrl+v > move down > Shift+i > type something > ESC > ESC
"#
"# < open file >
"#	:n
"#	:e#	<- open previous file
"#
"# < close all window >
"#	:qa
"#
"# ====================================================================== 
"#
"# < MACRO >
"#
"#	1. q + a  
"#	2. ~	 
"#	3. q	
"#	4. @a
"#	5. 10@a	 
"#
"#	Ctrl + a 
"#	Ctrl + x
"#	@@	
"#
"#	let @q='~'  -> Ctrl + R > Ctrl + R > b
"#	:reg q	    -> you can see a recorded macro.
"#
"# ====================================================================== 
"
"# < Vundle >
	" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

	set nocompatible		    " be iMproved, required 
	filetype off			    " required
	
	
	set rtp+=~/.vim/bundle/Vundle.vim   " set the runtime path to include Vundle and initialize 
	call vundle#begin()		    " <<< BEGIN >>> 
	" ---------------------------------------------------------------------	

	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'vim-airline/vim-airline'
	Plugin 'nanotech/jellybeans.vim' 
	Plugin 'kchmck/vim-coffee-script'
	Plugin 'vim-misc'
	"Plugin 'xolox/vim-easytags'
	"Plugin 'ronakg/quickr-cscope.vim'
	"Plugin 'majutsushi/tagbar'

	" ---------------------------------------------------------------------	
	call vundle#end()		    " <<< ENG >>>
	filetype plugin indent on	    " required 

	" :PluginList       - lists configured plugins 
	" :PluginInstall    - 
	" :PluginSearch foo - searches for foo; append `!` to refresh local cache 
	" :PluginClean      - 
	" 
	" see :h vundle for more details or wiki for FAQ 
	" Put your non-Plugin stuff after this line
"#
"# ====================================================================== 
"#
"# < ctags >
"#
"#	$ ctags -R	-> make tags
"#	:tj fnName	-> tags jump
"#	Ctrl + wf	-> 

	"set tags=./tags,~/work/linux/tags
	set tags=./tags;
	let g:easytags_async=1
	let g:easytags_auto_highlight=0
	let g:easytags_include_members=1
	let g:easytags_dynamic_files=1
"#
"# ====================================================================== 
"#
"# < cscope >
"#
"#	============ mkcscope.sh
"#	#!/bin/sh
"#	rm -rf cscope.files cscope.files
"#	find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files
"#	cscope -i cscope.files
"#	============================================
"#	$chmod 755 mkcscope.sh
"#	$mv mkcscope.sh /usr/bin
"#	$cd ~/work/linux 
"#	mkcscope.sh 
"#	=============================================
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
	if filereadable("./cscope.out") 
	    cs add ./cscope.out
	else
	    "cs add ~/work/linux/cscope.out
	    "cs add ~/work/Thomaskr17/OpenAvnu/cscope.out 
	endif
	set csverb
	
	"nmap <C-C>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	"nmap <C-C>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	"nmap <C-C>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	"nmap <C-C>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	"nmap <C-C>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	"nmap <C-C>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
	"nmap <C-C>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	"nmap <C-C>d :cs find d <C-R>=expand("<cword>")<CR><CR>



"function! LoadCscope() 
"    let db = findfile("cscope.out", ".;") 
"    if (!empty(db)) 
"	let path = strpart(db, 0, match(db, "/cscope.out$")) 
"	set nocscopeverbose " suppress 'duplicate connection' error 
"	exe "cs add " . db . " " . path 
"	set cscopeverbose 
"	" else add the database pointed to by environment variable 
"    elseif $CSCOPE_DB != "" 
"        cs add $CSCOPE_DB 
"    endif 
"endfunction 
"au BufEnter /* call LoadCscope()


"# ====================================================================== 
"#
"# < color >
	color jellybeans

"#
"# ====================================================================== 
"#
"# nmap : display normal mode maps
"# imap : display insert mode maps
"# vmap : display visual and select mode maps
"# smap : display select mode maps
"# xmap : display visual mode maps
"# cmap : display command-line mode maps
"# omap : display operator pending mode maps
"#
"# < short key (hotkey) >


" -----------------------------------------------------------------------------
" <F2> move to next window
map <F2> <C-w><C-w>
	

" -----------------------------------------------------------------------------
" <F3>


" -----------------------------------------------------------------------------
" <F4>
map <F4> :NERDTreeToggle<CR>


" -----------------------------------------------------------------------------
" <F5>
map <F5> :call CompileGcc()

func! CompileGcc()
    exec "w" 
    "silent make
    ! gcc %
endfunc 

" -----------------------------------------------------------------------------
" <S-F5>
map <S-F5> :call RunAOut() <CR>

func! RunAOut()
    !./a.out
endfunc


" -----------------------------------------------------------------------------



" -----------------------------------------------------------------------------
" <F9> Taglist
"#	https://vim.sourceforge.io/scripts/script.php?script_id=273
"#	~/.vim/plugin/taglist.vim
"#	:Tlist	    <-- to show tag list window.
"#
	nmap <F9> :TlistToggle<CR>
	let Tlist_Ctags_Cmd = "/usr/bin/ctags"
	let Tlist_Inc_Winwidth = 0
	let Tlist_Exit_OnlyWindow = 0
	let Tlist_Auto_Open = 0
	let Tlist_Use_Right_Window = 1

" -----------------------------------------------------------------------------
" <F12> make new comment
nmap <F12> i<ESC>O<ESC>0i<CR><CR><UP>/-<BS>*<SPACE>Thomas: <C-R>=strftime("%x %T")<ESC><CR>------------------------------------<CR><CR>*/<UP><SPACE>
imap <F12>  <ESC>O<ESC>0i<CR><CR><UP>/-<BS>*<SPACE>Thomas: <C-R>=strftime("%x %T")<ESC><CR>------------------------------------<CR><CR>*/<UP><SPACE>



map! () ()i
map! (); ();hi
map! [] []i
map! {} {}i
map! {}; {};iO
map! <> <>i
map! '' ''i
map! "" ""i




"execute pathogen#infect()
"syntax on
"filetype plugin on


"#
"# ====================================================================== 
"#
"# < macro > q + q (start), q (stop),  paste (Ctrl+R Ctrl+R b)
"#
   let @m='i#include <stdio.h>int main(int argc, char *argv[]) {}ko  '
"#
"# ====================================================================== 
"#
"# < settings >
"#
set cindent
"set smartindent
set background=dark
set number	
set tabstop=8
set hlsearch
set showmatch
set showcmd
"set scrolloff=2
"set wildmode=longest,list
"set sts=4
"set sw=1
set autowrite
"set autoread
set bs=eol,start,indent
set history=500
set laststatus=2
set paste
set shiftwidth=4
set smartcase
set smarttab
set softtabstop=4
set ruler
set incsearch
set title
set visualbell
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\ 
set autoindent

au BufReadPost * 
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "norm g`\"" |
    \ endif

if $LANG[0]=='k' && $LANG[1]=='o'
    set fileencoding=korea
endif

set guifont=Monaco:h10 noanti

"#
"# ====================================================================== 
"<EOF>
