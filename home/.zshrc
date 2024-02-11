#
# ~/.zshrc
#

# ------------------------------------------------------------------------------
# Environment
# ------------------------------------------------------------------------------

# Export path to root of dotfiles repo
export DOTFILES=${DOTFILES:="$HOME/.dotfiles"}
export KUBECONFIG=~/.kube/config
export EDITOR='nvim'
export GPG_TTY=$(tty)

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--color=fg:#c0caf5,bg:#24283b,hl:#ff9e64 \
--color=fg+:#c0caf5,bg+:#292e42,hl+:#ff9e64 \
--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff \
--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a"

# Do not override files using `>`, but it's still possible using `>!`
set -o noclobber

# Extend $PATH without duplicates
_extend_path() {
    if ! $(echo "$PATH" | tr ":" "\n" | grep -qx "$1"); then
        export PATH="$1:$PATH"
    fi
}

_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Add custom bin to $PATH
[[ -d "$HOME/.bin" ]] && _extend_path "$HOME/.bin"
[[ -d "$HOME/go/bin" ]] && _extend_path "$HOME/go/bin"
[[ -d "/opt/homebrew/bin" ]] && _extend_path "/opt/homebrew/bin"
[[ -d "/opt/homebrew/sbin" ]] && _extend_path "/opt/homebrew/sbin"
[[ -d "$HOME/.local/bin" ]] && _extend_path "$HOME/.local/bin"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GO
if [[ -d "$HOME/go/bin" ]]; then
    # export GOPRIVATE=""
    # export GOPROXY=""
    # export GOSUMDB=""
    export GOPATH="$HOME/go"
    export GOBIN="$HOME/go/bin"
fi

# Default pager
export PAGER='less'

# less options
less_opts=(
    # Quit if entire file fits on first screen.
    -FX
    # Ignore case in searches that do not contain uppercase.
    --ignore-case
    # Allow ANSI colour escapes, but no other escapes.
    --RAW-CONTROL-CHARS
    # Quiet the terminal bell. (when trying to scroll past the end of the buffer)
    --quiet
    # Do not complain when we are on a dumb terminal.
    --dumb
)

export LESS="${less_opts[*]}"

# ------------------------------------------------------------------------------
# Dependencies
# ------------------------------------------------------------------------------

# OMZ is managed by Sheldon
export ZSH="$HOME/.local/share/sheldon/repos/github.com/ohmyzsh/ohmyzsh"

# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins
plugins=(
    common-aliases
    git
    history-substring-search
    kubectl
    ssh-agent
    docker
    nvm
)

# Autoload the node version based on the directory's .nvmrc
zstyle ':omz:plugins:nvm' autoload yes
export DISABLE_MAGIC_FUNCTIONS=true

eval "$(sheldon source)"

if test -n "$KITTY_INSTALLATION_DIR"; then
    export KITTY_SHELL_INTEGRATION="enabled"
    autoload -Uz -- "$KITTY_INSTALLATION_DIR"/shell-integration/zsh/kitty-integration
    kitty-integration
    unfunction kitty-integration
fi

# ------------------------------------------------------------------------------
# Overrides
# ------------------------------------------------------------------------------

# Sourcing all zsh files from $DOTFILES/custom
custom_files=($(find $DOTFILES/custom -type f -name "*.*sh"))
if [[ "${#custom_files[@]}" -gt 0 ]]; then
    for file in "${custom_files[@]}"; do
        source $file
    done
fi

# Keep this at the end
eval "$(starship init zsh)"
