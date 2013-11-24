dotfile() { mv ~/$1 ~/.dotfiles/ && ln -s ~/.dotfiles/$1 $1; }
_dotfile() { _files -W ~/; }
compdef _dotfile dotfile
