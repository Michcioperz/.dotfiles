zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle ':completion:*' rehash true
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
VISUAL=/usr/bin/vim
EDITOR=/usr/bin/vim
setopt appendhistory beep extendedglob nomatch
unsetopt autocd notify
bindkey -e
autoload -U colors
colors
autoload -Uz promptinit
promptinit
case $HOST in
  (LELEI) PROMPT="%B%F{cyan}%K{cyan}%{█▓▒░%}%B%F{white}%K{cyan}%n@%m:/dev/%y%b%F{cyan}%K{cyan}%{░▒▓█%}%b%F{cyan}%K{black}%{█▓▒░%}%B%F{white}%K{black} %D{%a %b %d %H:%M:%S} 
%{%}%B%F{cyan}%K{black}%~/%b%f%k ";;
  (mayushii) PROMPT="%B%F{blue}%K{blue}%{█▓▒░%}%B%F{white}%K{blue}%n@%m:/dev/%y%b%F{blue}%K{blue}%{░▒▓█%}%b%F{blue}%K{black}%{█▓▒░%}%B%F{white}%K{black} %D{%a %b %d %H:%M:%S} 
%{%}%B%F{blue}%K{black}%~/%b%f%k ";;
  (*) PROMPT="%B%F{yellow}%K{yellow}%{█▓▒░%}%B%F{white}%K{yellow}%n@%m:/dev/%y%b%F{red}%K{yellow}%{░▒▓█%}%b%F{red}%K{black}%{█▓▒░%}%B%F{white}%K{black} %D{%a %b %d %H:%M:%S} 
%{%}%B%F{yellow}%K{black}%~/%b%f%k ";;
esac
setopt completealiases
[ -d $HOME/.nvm ] && . "$HOME/.nvm/nvm.sh"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias zshrc="vim $HOME/.zshrc"
alias vimrc="vim $HOME/.vimrc"
alias resource="source $HOME/.zshrc"
alias mpdc="export MPD_HOST=/run/mpd/socket"
alias mopidyc="export MPD_HOST=mayushii MPD_PORT=6601"
[[ -n "${key[PageUp]}" ]] && bindkey "${key[PageUp]}" history-beginning-search-backward
[[ -n "${key[PageDown]}" ]] && bindkey "${key[PageDown]}" history-beginning-search-forward
[ -d $HOME/torch ] && . $HOME/torch/install/bin/torch-activate
[ -d /usr/local/heroku ] && export PATH="/usr/local/heroku/bin:$PATH"
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh
