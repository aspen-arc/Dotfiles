# My fish config for macOS
#  ／l、
#（ﾟ､ ｡７
#⠀ l、ﾞ~ヽ 
#  じし(_,)ノ

#########################################

## Default stuff 💾
export EDITOR="/usr/local/bin/nvim"

## Get rid of bad/unnecessary features 🗑️
set fish_greeting
set -g fish_autosuggestion_enabled 0

## Cowsay 🍔
fortune -s | cowsay -f moose | lolcat --seed=100

## Starship 🚀
starship init fish | source

## Aliases 🔥

# Fish 🐟
alias fishconfig="/usr/local/bin/nvim $HOME/.config/fish/config.fish"
alias reloadfish="source $HOME/.config/fish/config.fish"

# Sudo -s instead of su and sudo 🦸
alias su='sudo -s'
alias sudo='sudo -s'

# Tree/List 🌲
alias ls="exa -Ga --icons"
alias tree="exa -1aT --icons"

# Make parent dir with mkdir 👴
alias mkdir="mkdir -pv"

# Safety 😷
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"
alias ln="ln -i"
