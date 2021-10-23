#

PROMPT='%B%F{red}%~ %F{cyan}>%f%b '

alias ls='lsd'
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias grep='grep --color=auto'
alias hist='history'
alias clip='xclip -sel clipboard'
alias p='sudo pacman'
alias py='bpython'
alias rg='ranger /'
alias film='mount /home/lenny/YTOW/films && sudo systemctl start sshd'
alias please='sudo'

bindkey "^[[3~" delete-char
bindkey "^H" backward-kill-word
bindkey "[3;5~" kill-word
bindkey "[1;5C" forward-word
bindkey "[1;5D" backward-word

# The following lines were added by compinstall
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion::complete:*' gain-privileges 1
zstyle :compinstall filename '/home/lenny/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep

# these characters are parts of words
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

bindkey -e
export EDITOR=vim
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
