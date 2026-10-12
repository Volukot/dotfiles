# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#PS1='[\u@\h \W]\$ '

export PATH="$PATH:$HOME/.local/bin"

alias ls='ls -lah --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias sex='echo "hitler!?!?!?"'
alias removeorphans='sudo pacman -Rns $(pacman -Qdtq)'
alias paccache='sudo pacman -Scc'
alias cd='z'
alias sps='sudo pacman -S'
alias sctl='sudo systemctl'
alias ports='sudo ss -tulpn'

#PS1='\A =\u@\h= \w \$ '
#PS1='\[\e[32;40;1m\]-\A-\[\e[31;40;1m\] $? \[\e[0m\e[36;40;1m\]=\[\e[35;40;1m\]\u\[\e[36;40;1m\]@\[\e[35;40;1m\]\h\[\e[36;40;1m\]= \[\e[33;40;1m\]\w \$\[\e[0m\] '
PS1='\[\e[32;1m\]-\A-\[\e[31;1m\] $? \[\e[0m\e[34;1m\]=\[\e[96;1m\]\u\[\e[34;1m\]@\[\e[96;1m\]\h\[\e[34;1m\]= \[\e[33;1m\]\w \[\e[95;1m\]\$\[\e[0m\] '
PS2='> '

# bypass steamos PS1
__steamos_prompt_command() {
    PS1='\[\e[32;1m\]-\A-\[\e[31;1m\] $? \[\e[0m\e[34;1m\]=\[\e[96;1m\]\u\[\e[34;1m\]@\[\e[96;1m\]\h\[\e[34;1m\]= \[\e[33;1m\]\w \[\e[95;1m\]\$\[\e[0m\] '
}

HISTSIZE=100000
HISTFILESIZE=10000000
HISTCONTROL=ignoreboth:erasedups

echo
echo -e "        \x1b[35;1mWelcome to the Terminal >w<\x1b[0m"
fastfetch

eval "$(zoxide init bash)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:$HOME/.lmstudio/bin"
# End of LM Studio CLI section

# Unity CLI
case ":${PATH}:" in *:"$HOME/.local/bin":*) ;; *) export PATH="$HOME/.local/bin:$PATH" ;; esac
