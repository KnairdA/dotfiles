setopt no_beep auto_cd complete_in_word correct rm_star_wait hist_ignore_all_dups share_history append_history extended_history
eval `dircolors`
PROMPT='%B%n:~#%b '
RPROMPT='%/'
export EDITOR=vim
export PAGER=less

autoload -U  compinit && compinit
zstyle ':completion:*' menu select=1
zstyle ':completion:*' completer _complete _correct _approximate

HISTFILE=~/.zsh_history
SAVEHIST=10000000
HISTSIZE=12000000  

alias ls='ls --color=auto'
alias grep='grep --color'
alias evince='evince &> /dev/null'
alias svim='sudo vim'

alias sdefi='find -iname \*.h | xargs grep $1'
alias simpl='find -iname \*.cc | xargs grep $1'
alias grepsearch='grep -iRnH "$@"'
alias psgrep='ps axuf | grep -v grep | grep "$@" -i --color=auto'
