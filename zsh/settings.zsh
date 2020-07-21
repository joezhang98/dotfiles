# Nicer history
HISTSIZE=1048576
HISTFILE="$HOME/.zsh_history"
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt incappendhistory
setopt extendedhistory

# Use vim as the editor
export EDITOR=vim

# Use vim style line editing in zsh
bindkey -v
# Backspace
bindkey '^?' backward-delete-char

# Turn off all beeps
unsetopt BEEP
# Turn off autocomplete beeps
# unsetopt LIST_BEEP
