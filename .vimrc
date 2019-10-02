" This remaps the movemet keys j and k (In Colemak, J (= Qwerty Y) is placed
" above K (= Qwerty N), which I find confusing in Vim since j moves down and k
" up. I think the remappings below result in a more logical and easier to
" reach layout, keeping in mind that space and backspace (= Qwerty Caps-Lock)
" can be used instead of Colemak J (= Qwerty Y). I use the join-lines command
" much more than the help command, and have therefore swapped J and K since I
" find Colemak K (Qwerty N) much easier to reach than Colemak J (Qwerty Y).

" The first five mappings are basically all one needs to remember.
"colemak stuff
	noremap N J
	noremap n j
	noremap e k
	noremap E K

	noremap i l
	noremap I L
	noremap l i
	noremap L I

	noremap j n
	noremap J N
	noremap k e
	noremap K E

	noremap ' ;
	noremap " :

	noremap gh gk
	noremap gj gh
	noremap gk gj

	noremap zh zk
	"zK does not exist
	noremap zj zh
	noremap zJ zH
	noremap zk zj
	"zJ does not exist
	noremap z<Space> zl
	noremap z<S-Space> zL
	noremap z<BS> zh
	noremap z<S-BS> zH

	noremap <C-w>h <C-w>k
	noremap <C-w>H <C-w>K
	noremap <C-w>j <C-w>h
	noremap <C-w>J <C-w>H
	noremap <C-w>k <C-w>j
	noremap <C-w>K <C-w>J
	noremap <C-w><Space> <C-w>l
	noremap <C-w><S-Space> <C-w>L
	noremap <C-w><S-BS> <C-w>H

"misc stuff from the wangblows day
	cmap X se key=
	cmap jc !javac %
	cmap jr !javac %
	nmap <C-PageUp> ]s
	nmap <C-PageDown> [s
	set nu!
	set ai
	compiler gcc
	syn on
	set t_Co=256
	set shiftwidth=4
	set tabstop=4
	set backspace=2
	set nrformats=
	set spell
	set fileformat=unix
	set foldlevel=0
	set hlsearch
	set incsearch
	se guifont=terminus:h12:cANSI
	set nocompatible

"colours
	colorscheme al-daxiin
	hi Normal guibg=NONE ctermbg=NONE

"this autofolds via indent, but shows the first level of indent. Set foldlevel to 0 to fold everything
	"zm increases foldlevel by one; zr decreases by one; zR decreases to zero
	set foldmethod=indent

"notes
	"* is / for current word
	"CTRL-N is tab
	"abbr Lunix Linux
	"it was fixed sys 9, back in my day
	"cmap  browse saveas 
	"cmap  browse confirm e 
	"cmap  se textwidth=80 

"python stuff
	autocmd BufEnter *.py set shiftwidth=4
	autocmd BufEnter *.py set tabstop=4
	autocmd BufEnter *.py set expandtab

"java stuff
	let java_allow_cpp_keywords=1

" lisp stuff
	"set lisp
	"set sm

"yaml stuff
	autocmd BufEnter *.yaml set shiftwidth=2
	autocmd BufEnter *.yaml set tabstop=2
	autocmd BufEnter *.yaml set expandtab
	autocmd BufEnter *.yml set shiftwidth=2
	autocmd BufEnter *.yml set tabstop=2
	autocmd BufEnter *.yml set expandtab

"json stuff
	autocmd BufEnter *.json set shiftwidth=2
	autocmd BufEnter *.json set tabstop=2
	autocmd BufEnter *.json set expandtab

"javascript stuff
	autocmd BufEnter *.js set shiftwidth=2
	autocmd BufEnter *.js set tabstop=2
	autocmd BufEnter *.js set expandtab
	"cmap node_test "!tape % | tap-nyan"
	"cmap node !node %
