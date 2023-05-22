if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/usr/lib:$PATH
export PATH=$HOME/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export PYTHONPATH=$PYTHONPATH:/usr/bin/zenmap
# Go variables and path
export GOPATH=/root/go-workspace
export GOROOT=/usr/local/go
PATH=$PATH:$GOROOT/bin/:$GOPATH/bin
export GOROOT=/usr/local/go
export GOPATH=$PATH:/usr/local/go/bin
DISABLE_LS_COLORS="true"
DISABLE_LS_COLORS="true"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# alias zshconfig="mate ~/.zshrc"
alias full-upgrade="sudo apt-get full-upgrade | grep -P "\d\K" "
alias ohmyzsh="mate ~/.oh-my-zsh"
alias uu="sudo apt-get update -y | grep -P "\d\K "&& sudo apt-get upgrade -y | grep -P "\d\K" "
alias autoremove="sudo apt-get -y autoremove | grep -P "\d\K" "
alias install="sudo apt-get -y install"
alias uninstall="sudo apt-get -y remove"
alias search="apt-get search"
alias vim="nvim"
alias ls="lsd"
alias tree="lsd --tree"
alias py="python3"
alias add-key="eval \`ssh-agent -s\` && ssh-add ~/.ssh/key"
alias start-database="sudo -u postgres psql"
# alias pip="pip3"
alias python="python3"
alias cm="chmod +x "
alias py-shebang="echo '#!/usr/bin/python3' | tee "
alias go-shebang="echo '//usr/bin/true; exec /usr/bin/env go run "'$0'" "'$@'"' | tee "
alias ls="lsd"
alias generate-key="mkdir ~/.ssh && cd ~/.ssh && ssh-keygen -t ed25519 -C 'mr.alangobryan@gmail.com'"
alias start-mysql="sudo mkdir /var/run/mysqld/ && sudo service mysql start"
alias start-mysql-root="sudo mkdir /var/run/mysqld/ && sudo service mysql start && mysql -u root -p"
alias run="mysql -u root -p"
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
alias psql-exec="psql swan -d swan -f"
alias go-to="psql -h localhost -p 5432 -U"
alias back="cd .."
alias prev="cd -"
alias remove="sudo apt-get -y remove | grep -P "\d\K" "
alias pull="git pull --ff-only"
alias push="git push"
alias commit="git commit -m"
alias update="sudo apt-get update -y | grep -P "\d\K" "
alias upgrade="sudo apt-get upgrade -y | grep -P "\d\K" "
alias docker-exec="sudo docker exec -it"
alias zenmap="zenmap-kbx"

alias clean-dpkg="sudo apt -y remove $(cat ~/bin/stale-packages/packages)"


source ~/powerlevel10k/powerlevel10k.zsh-theme


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS
