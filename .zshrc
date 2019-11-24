#path setup
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$HOME/.brew/bin
export PATH=$PATH:$HOME/.apps
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/Users/aaugusti/.scripts

#docker-machine config
eval $(docker-machine env default)

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
