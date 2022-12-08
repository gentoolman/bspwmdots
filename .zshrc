# History
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=1000

# Autocomplete
autoload -Uz compinit
compinit

# Prompt
getParent() {
    # Get the name of the parent command
    comm_name="$(ps -p $PPID -o comm=)"
    PARENT=""
    # Ignore if kitty
    if [ $comm_name != "kitty" ]; then PARENT="[\e[2m\e[3m$comm_name\e[0m%{$fg[cyan]%}]"; fi
    echo $PARENT
}

getPrompt() {
    PROMPT="%{$fg[cyan]%}┌─"
    PROMPT+=$(getParent)
    PROMPT+="[%B%{$fg[white]%}%n%{$fg[cyan]%}@%{$fg[white]%}%m%{$fg[cyan]%}: %~%b%{$fg[cyan]%}]%{$reset_color%}"
    PROMPT+="
%{$fg[cyan]%}└─%(!.#.$)%{$reset_color%} "
    setopt no_prompt_{bang,subst} prompt_percent  # enable/disable correct prompt expansions
}

# Prompt Init
autoload -U colors && colors
autoload -Uz add-zsh-hook
add-zsh-hook precmd getPrompt


# Aliases
alias pacman='sudo pacman'
alias grep='grep --color=auto'
alias ip='ip -c --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias lsa='ls -lsa --color=auto'
alias rofi='rofi -show drun'

# Pywal
#./.config/bspwm/pywal.sh /home/$USER/Pictures/a-bust-with-a-skull-mask-and-neon-lights-oc-wallpaper.jpg

# WAL
(cat ~/.cache/wal/sequences &)
cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh
