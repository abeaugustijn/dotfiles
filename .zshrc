#path setup
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$HOME/.brew/bin
export PATH=$PATH:$HOME/.apps
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/Users/aaugusti/.scripts
export PATH="/usr/local/opt/llvm/bin:$PATH"
alias clearhome="echo -n \"Available before:\t\"; df -h | grep $HOME | sed 's/  */:/g' | cut -d ':' -f 4; unsetopt nomatch; rm -Rf ~/Library/*.42_cache_bak*; rm -Rf ~/*.42_cache_bak_*; setopt nomatch; echo -n \"Available after:\t\"; df -h | grep $HOME | sed 's/  */:/g' | cut -d ':' -f 4; rm -rf /Users/aaugusti/Library/Containers/com.docker.docker/Data"
alias nplus="bash <(curl -sL bit.ly/qnorm)"
export GITH=https://github.com/abeaugustijn

#random settings which break things if removed
export KEYTIMEOUT=1
bindkey -v

#aliases
alias q="exit"
alias grep="grep --color"
alias cfvim="vim ~/.vimrc"
alias own="sudo chown -R abe:abe"
alias gdb="gdb -ex 'set disassembly-flavor intel'"
alias v="nvim"
alias vim="nvim"
alias l=clear

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
