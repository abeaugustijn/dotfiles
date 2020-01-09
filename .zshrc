#path setup
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/Users/aaugusti/.scripts
export PATH=$PATH:/home/abe/.gem/ruby/2.5.0/bin
export PATH=/usr/local/opt/llvm/bin:$PATH
export SHELL="/bin/zsh"
#export EDITOR=/usr/bin/nvim
#export SHELL=/use/bin/zsh

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
ZSH_THEME="afowler"
source $ZSH/oh-my-zsh.sh

printf "\n\n"
neofetch --gap 20
printf "\n\n"

printf "\n   \u001b[34;1mActive TMUX sessions:\n\u001b[0m\u001b[33m"
tmux ls | cut -d':' -f 1 | xargs printf "   %s\n"
printf "\n\u001b[0m"

printf "   \u001b[34;1mServices:\n\u001b[0m"

ping -c1 -W1 kerkkalender.nl &> /dev/null && printf "   \u001b[32mkerkkalender ✓\n" || printf "   \u001b[31mkerkkalender ×\n"

printf "\n\u001b[0m"
