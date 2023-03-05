# My config.nu nushell config for macOS
#  ／l、
#（ﾟ､ ｡７
#⠀ l、ﾞ~ヽ 
#  じし(_,)ノ

#########################################

# Themes 🏙
let background = "#212121" # define terminal background color 🖍

let base16_theme = { # makes custom theme 🎠
    hints: $background # hides hints by making them the same color as the background 🙈
}

## Main config/Record 🎥 
let-env config = {
    color_config: $base16_theme # Sets custom theme 🌃
    show_banner: false # Get rid of "Welcome to Nushell" 👋
    buffer_editor: "nvim" # Default text editor ✍️
    edit_mode: emacs # Change edit mode ✏️
}

## Cowsay 🍔
fortune -s | cowsay -f moose | lolcat --seed=100

## Starship 🚀
source ~/.cache/starship/init.nu

## Aliases 🔥

# Sudo -s instead of su and sudo 🦸
alias su = sudo -s
alias sudo = sudo -s

# Tree/List 🌲
alias ls = exa -Ga --icons
alias tree = exa -1aT --icons

# Make parent dir with mkdir 👴
alias mkdir = mkdir -pv

# Safety 😷
alias mv = mv -i
alias cp = cp -i
alias rm = rm -i
alias ln = ln -i
