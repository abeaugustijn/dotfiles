#path setup
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/Users/aaugusti/.scripts
export PATH=$PATH:/home/abe/.gem/ruby/2.5.0/bin
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
export PATH=$PATH:/home/abe/.cargo/bin
export PATH=/home/abe/.bin:$PATH
export PATH=/usr/local/opt/llvm/bin:$PATH
export SHELL="/bin/zsh"
export BROWSER="$(which firefox-nightly)"

#random settings which break things if removed
export KEYTIMEOUT=1
bindkey -v

#aliases
alias q="exit"
alias grep="grep --color"
alias own="sudo chown -R abe:abe"
alias gdb="gdb -ex 'set disassembly-flavor intel'"
alias v="nvim"
alias vim="nvim"

#oh my zsh setup
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh
if [ -f /etc/zsh.cnf ]; then
 . /etc/zsh.cnf
fi
plugins=(web-search zsh-autosuggestions zsh-syntax-highlighting colored-man-pages)
source /Users/aaugusti/.brew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
neofetch
source $HOME/.cargo/env

ogh () {
	open `git remote -v | grep "fetch" | cut -f2 | awk  '{print $1}'`
}

compress() {
	FILE=$1
	shift
	case $FILE in
		*.tar.bz2) tar cjf $FILE $*  ;;
		*.tar.gz)  tar czf $FILE $*  ;;
		*.tgz)     tar czf $FILE $*  ;;
		*.zip)     zip $FILE $*      ;;
		*.rar)     rar $FILE $*      ;;
		*)         echo "Filetype not recognized" ;;
   esac
}

extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)   tar xjf $1     ;;
			*.tar.gz)    tar xzf $1     ;;
			*.bz2)       bunzip2 $1     ;;
			*.rar)       unrar e $1     ;;
			*.gz)        gunzip $1      ;;
			*.tar)       tar xf $1      ;;
			*.tbz2)      tar xjf $1     ;;
			*.tgz)       tar xzf $1     ;;
			*.zip)       unzip $1       ;;
			*.Z)         uncompress $1  ;;
			*.7z)        7z x $1        ;;
			*)     echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

printf "\n\n"
neofetch --gap 20
printf "\n"

if tmux ls &> /dev/null; then
	printf "\n   \u001b[34;1mActive TMUX sessions:\n\u001b[0m\u001b[33m"
	tmux ls 2> /dev/null | cut -d':' -f 1 | xargs printf "   %s\n"
	printf "\n\u001b[0m"
fi

gh () {
	git remote -v | grep fetch | cut --delimiter=' ' -f1 | cut -f2 | xargs -I{} $BROWSER --new-tab {}
}

ghc () {
	git remote -v | grep fetch | cut --delimiter=' ' -f1 | cut -f2 | xargs -I{} $BROWSER --new-tab {}/commits
}


alias i="sudo pacman -Sy"
