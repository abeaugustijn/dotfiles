"             _               ___       _ _         _           
"            (_)             / (_)     (_) |       (_)          
"  _ ____   ___ _ __ ___    / / _ _ __  _| |___   ___ _ __ ___  
" | '_ \ \ / / | '_ ` _ \  / / | | '_ \| | __\ \ / / | '_ ` _ \ 
" | | | \ V /| | | | | | |/ /  | | | | | | |_ \ V /| | | | | | |
" |_| |_|\_/ |_|_| |_| |_/_/   |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
"                                                               
"                       Abe Augustijn

"	basic settings
set encoding=utf-8
set wildmenu number nowrap
set tabstop=4 shiftwidth=4 noexpandtab autoindent smarttab

colorscheme iceberg
" colorscheme solarized8_high
" let solarized_termtrans=1
syntax on
filetype plugin on

"	other config files
	source ~/.config/nvim/coc.vim

"	plugins
call	plug#begin('~/.vim/pluged')
	Plug	'scrooloose/nerdtree'
	Plug	'vim-airline/vim-airline'
	Plug	'aserebryakov/vim-todo-lists'
	Plug	'geekjuice/vim-mocha'
	Plug	'neoclide/coc.nvim', {'branch': 'release'}
	Plug	'mattn/emmet-vim'
	Plug	'pangloss/vim-javascript'
	Plug	'pbondoer/vim-42header'
	Plug	'Shougo/denite.nvim'
	Plug	'rakr/vim-two-firewatch'
	Plug	'tpope/vim-fugitive'
	Plug	'majutsushi/tagbar'
	Plug	'scrooloose/nerdcommenter'
	Plug	'airblade/vim-gitgutter'
	Plug	'nathanaelkane/vim-indent-guides'
	Plug	'mxw/vim-jsx'
	Plug	'christoomey/vim-tmux-navigator'
	Plug	'rhysd/clever-f.vim'
	Plug	'arakashic/chromatica.nvim'
	Plug	'junegunn/fzf.vim'
	Plug	'junegunn/fzf'
	Plug	'oblitum/rainbow'
call	plug#end()

inoremap {<CR> {}<left><CR><CR><up><Tab><Tab>
nnoremap <C-p> <S-v>p
inoremap jk <Esc>
nnoremap J :w<CR>

inoremap <C-h> <C-h>
inoremap <C-j> <C-j>
inoremap <C-k> <C-k>
inoremap <C-l> <C-l>

set colorcolumn=80

"	NERDCommenter
	nmap  <Plug>NERDCommenterToggle
	vmap  <Plug>NERDCommenterToggle

"	gitgutter
	nmap <leader>g <Plug>(GitGutterPreviewHunk)

"	fzf
	nmap <F2> :Files<CR>

"	vscode	
	nnoremap <leader>ov :exe ':silent !code %'<CR>:redraw!<CR>

"	reload config shotcut
	map <M-r> :so ~/.config/nvim/init.vim<CR>

"	open specific files in new tab
	nnoremap <C-c> :tabe ~/.config/nvim/<CR>

"	tab and shift-tab for tab navigation
	map <Tab> :tabnext<CR>
	map <S-Tab> :tabprev<CR>

"	NERDTree and tagbar settings
    " autocmd vimenter * NERDTree
	nnoremap <C-n> :NERDTreeToggle<CR> <C-w>=
	let NERDTreeMinimalUI = 1
	let NERDTreeDirArrows = 1
	let NERDTreeQuitOnOpen= 0
	let NERDTreeChDirMode = 2
	let g:tagbar_left = 1
	let g:tagbar_vertical = 10

"	vim-airline settings
    set t_Co=256
	let g:airline_powerline_fonts = 1
	let g:airline_theme='twofirewatch'

"	rainbow
	au FileType c call rainbow#load()

"	find placeholder ("<++>")
	nnoremap <F12> /<++><CR>df>i
	imap <F12> <F12>

"	autocomplete map to F11
	imap <F11> <C-X><C-K>

"	snippets
	nnoremap ,c :-1read $HOME/.vim/snippets/stdio.main.c.snippet<CR>3jA
	nnoremap ,l :-1read $HOME/.vim/snippets/lezingen.snippet<CR>
	nnoremap ,k :-1read $HOME/.vim/snippets/kalender.snippet<CR>
	nnoremap ,j :-1read $HOME/.vim/snippets/javascript-import.snippet<CR>

"	ruby
	au BufNewFile,BufRead *.rb map <F2> :!ruby %<CR>

"	javscript

"	jsx
	let g:jsx_ext_required = 0

"	c
	nnoremap m :make<CR>
	nnoremap M :!./a.out<CR>

"   ejs
	au BufNewFile,BufRead *.ejs set filetype=html

"	enable man pages plugin
	runtime ftplugin/man.vim

"	markdown
	au BufNewFile,BufRead *.md map m :!md2pdf %<CR>
