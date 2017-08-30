export ZSH=/home/scorp/.config/oh-my-zsh
ZSH_THEME="af-magic"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias nano='nano -L -S -E -P -T 4 -i -w'
alias xi='sudo xbps-install -S'
alias xr='sudo xbps-remove'
export EDITOR=nano
