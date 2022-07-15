if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/usr/bin:$PATH
export PATH=$HOME/.local/lib/python3.10/site-packages:$PATH
source $(dirname $(gem which colorls))/tab_complete.sh
export PATH=$PATH:$(ruby -e 'puts Gem.bindir')
export PATH=$PATH/local/lib:$PATH


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_MODE="nerdfont-complete"
POWERLEVEL10K_LEFT_PROMPT_ELEMENTS=(os_icon dir newline vcs)

plugins=(
    git
    pyenv
    pylint
    python
	postgres
)

source $ZSH/oh-my-zsh.sh


# Aiases

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="nvim"
alias py="python3"
alias add-key="eval \`ssh-agent -s\` && ssh-add ~/.ssh/alango"
alias start-database="sudo -u postgres psql"
alias valentina="cd /home/alango/Downloads/valentina-studio/pkg/valentina-studio/opt/VStudio && ./vstudio"
alias pip="pip3"
alias python="python3"
alias cm="chmod +x "
alias py-shebang="echo '#!/usr/bin/python3' | tee "
alias go-shebang="echo '//usr/bin/true; exec /usr/bin/env go run "'$0'" "'$@'"' | tee "
alias ls="lsd"
alias lls="colorls"
alias lab="jupyter lab"
alias notebook="jupyter notebook"
alias notebook-themes="jt -l"
alias list-unused-packages="sudo pacman -Qtdq"
alias remove-unused-packages="sudo pacman -R $(pacman -Qtdq)"
alias uu="sudo pacman -Syyu"
alias admin="sudo"
alias copy-go="cat ~/bin/go-template >"


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
