# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto -F'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export EDITOR=/usr/bin/vim

typeset -U path
path=(~/bin $path)

autoload -U colors && colors

# Set a fancy prompt.
PROMPT="%(?.%?.%{$fg_bold[red]%}%?%{$reset_color%b%}) %{$fg_bold[magenta]%}%n%{$reset_color%b%}@$fg[green]%m%{$reset_color%} %~ %D{%a %b %d %H:%M:%S}
\$ "

bindkey "^?" backward-delete-char
