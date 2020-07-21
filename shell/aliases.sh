# ls aliases
alias ll='ls -FGlAhp'
alias la='ls -A'

# Aliases to protect against overwriting and to correct mistyping
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias dc='cd'

# Create a directory and cd into it
mcd() {
    mkdir "${1}" && cd "${1}"
}
