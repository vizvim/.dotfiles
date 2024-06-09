[ -d ~/Projects ]  && alias pj='cd ~/Projects'
[ -d ~/.dotfiles ] && alias dotfiles='cd ~/.dotfiles'

alias clr="clear"
alias dotfiles="~/.dotfiles"
alias e="$EDITOR"
alias reload="source $HOME/.zshrc"
alias path='echo -e ${PATH//:/\\n}'
alias main='git checkout main'

if _exists bat; then
  alias cat='bat'
fi

if _exists eza; then
  alias ls="eza -la --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
  alias tree="eza --tree --color=always --icons=always"
fi
