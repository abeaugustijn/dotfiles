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
set wildmenu number relativenumber nowrap
set tabstop=4 shiftwidth=4 noexpandtab autoindent smarttab
set clipboard+=unnamedplus

syntax on
filetype plugin on
set nohlsearch
set mouse=
highlight Pmenu ctermbg=darkgrey
let mapleader = " "

"	other config files
	source ~/.config/nvim/coc.vim

"	plugins
call	plug#begin('~/.vim/pluged')
	Plug	'scrooloose/nerdtree'
	Plug	'itchyny/lightline.vim'
	Plug	'neoclide/coc.nvim', {'branch': 'release'}
	Plug	'pangloss/vim-javascript'
	Plug	'pbondoer/vim-42header'
	Plug	'scrooloose/nerdcommenter'
	Plug	'airblade/vim-gitgutter'
	Plug	'mxw/vim-jsx'
	Plug	'christoomey/vim-tmux-navigator'
	Plug	'rhysd/clever-f.vim'
	Plug	'arakashic/chromatica.nvim'
	Plug	'junegunn/fzf.vim'
	Plug	'junegunn/fzf'
	Plug	'oblitum/rainbow'
	Plug	'rakr/vim-two-firewatch'
	Plug	'Xuyuanp/nerdtree-git-plugin'
	Plug	'ryanoasis/vim-devicons'
	Plug	'tpope/vim-surround'
	Plug	'edkolev/tmuxline.vim'
	Plug	'tpope/vim-fugitive'
	Plug	'gregsexton/gitv', {'on': ['Gitv']}
	Plug	'arcticicestudio/nord-vim'
call	plug#end()

"	custom binds and pane navigation
inoremap {<CR> {}<left><CR><CR><up><Tab>
nnoremap <C-p> <S-v>p
inoremap jk <Esc>
nnoremap J :w<CR>
nmap <F6> :set number!<CR>

inoremap <C-h> <C-h>
inoremap <C-j> <C-j>
inoremap <C-k> <C-k>
inoremap <C-l> <C-l>

nmap <leader><leader> <c-^>

"	terminal settings
nmap <leader>- :sp<CR><C-w>j:set number!<CR>:set relativenumber!<CR>:terminal<CR>A
nmap <leader>\ :vs<CR><C-w>l:set number!<CR>:set relativenumber!<CR>:terminal<CR>A
tmap <C-h> <C-\><C-n><C-h>
tmap <C-j> <C-\><C-n><C-j>
tmap <C-k> <C-\><C-n><C-k>
tmap <C-l> <C-\><C-n><C-l>
tmap jk <C-\><C-n>

"	NERDCommenter
	nmap  <Plug>NERDCommenterToggle
	vmap  <Plug>NERDCommenterToggle

"	gitgutter
	nmap <leader>g <Plug>(GitGutterPreviewHunk)

"	fzf
	nmap <F2> :Files<CR>
	nmap <F3> :Rg
	let g:fzf_action = {
	\ 'ctrl-t': 'tab split',
	\ 'ctrl-s': 'split',
	\ 'ctrl-v': 'vsplit' }

"	vscode	
	nnoremap <leader>ov :exe ':silent !code %'<CR>:redraw!<CR>

"	reload config shotcut
	map <M-r> :so ~/.config/nvim/init.vim<CR>
	map ® :so ~/.config/nvim/init.vim<CR>

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
	let NERDTreeIgnore=['\.o$', '\~$']

"	vim-airline settings
    set t_Co=256
	let g:airline_powerline_fonts = 1
	let g:airline_theme='twofirewatch'

"	find placeholder ("<++>")
	nnoremap <F12> /<++><CR>cf>
	imap <F12> <F12>

"	autocomplete map to F11
	imap <F11> <C-X><C-K>

"	ruby
	au FileType rb map <F2> :!ruby %<CR>

"	jsx
	let g:jsx_ext_required = 0

"	c
	au FileType c nnoremap m :make<CR>
	au FileType c nnoremap M :!./a.out<CR>
	au FileType c nnoremap <C-m> :make test<CR>
	au FileType c nnoremap ,c :-1read $HOME/.vim/snippets/stdio.main.c.snippet<CR>3jA
	au FileType c call rainbow#load()
	au FileType c nnoremap <C-t> yyp0wcesprintf(res, lx
	map <leader>c o/*<CR>cc<backspace>**<tab><CR>*/<CR>2kA

"   ejs
	au FileType ejs set filetype=html

"	js
	au FileType js nnoremap ,j :-1read $HOME/.vim/snippets/javascript-import.snippet<CR>

"	enable man pages plugin
	runtime ftplugin/man.vim

"	markdown
	au FileType md map m :!md2pdf %<CR>

"	colorschemes
	colorscheme nord
	let g:lightline = { 'colorscheme': 'nord' }

	set mouse=a
