# Author: Joe Zhang
# Updated: 2020/05/26
# Description: BASH configurations and aliases
# Attribution: Copied and modified from Nate Landau
#              Source: https://gist.github.com/natelandau/10654137
#
# Sections:
# 1.  Environment Configuration
# 2.  Making Terminal Better
# 3.  Git-related Aliases
# 4.  Miscellaneous

# 1.  Environment Configuration
# Change prompt
export PS1="__________________________________________________\n| \w @ \h (\u) \n| => "
export PS2="| => "
export BASH_SILENCE_DEPRECATION_WARNING=1

# 2.  Making Terminal Better
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ll='ls -FGlAhp'
alias less='less -FSRXc'
alias cd..='cd ../'
alias edit='code'
alias emacs='emacs -nw'
alias f='open -a Finder ./'
alias ~='cd ~'
alias c='clear'

# 3.  Git-related Aliases
alias add='git add -A; git status'
alias push='git push origin master'
alias status='git status'

# 4.  Miscellaneous
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
set -o vi
