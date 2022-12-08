#> RC - $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
#> RC - XDG Spec
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
#> XDG - Generic
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
#> XDG - Shell
export ZDOTDIR="$HOME"/.config/zsh
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export STARSHIP_CONFIG="$XDG_CONFIG_HOME"/starship/starship.toml
export STARSHIP_CACHE="$XDG_CONFIG_HOME"/starship/cache
#> XDG - Rust
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export CARGO_HOME="$XDG_DATA_HOME"/cargo

#> RC - ENV
export EDITOR='code'
export TERMINAL='alacritty'
export GCM_CREDENTIAL_STORE='cache'

#> Zinit
ZINIT_HOME="$XDG_DATA_HOME"/zinit/zinit.git
source "${ZINIT_HOME}/zinit.zsh"
#>>> Zinit - Plugins
zinit load zdharma-continuum/history-search-multi-word
zinit light zsh-users/zsh-syntax-highlighting

#> SECTION: Aliases
#>>> ALS - Utils
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
#>>> CMD - Quicks
alias x="exit"
alias c="clear"
alias ls="lsd"
#>>> CMD - nala
alias apt="nala"
alias ni="sudo nala install --update"
alias nu="sudo nala upgrade"
alias ns="sudo nala search"
#>>> ALS - Configs
alias zfg="code ~/.config/zsh/.zshrc"
alias sfg="code ~/.config/starship/starship.toml"
alias kfg="code ~/.config/kitty/kitty.conf"
alias afg="code ~/.config/alacritty/alacritty.yml"
alias lfg="code ~/.config/lsd/config.yaml"

#> RC - Eval
eval "$(starship init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
