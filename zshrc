# Change $PATH if coming from bash.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to the oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set $JAVA_HOME environment variable to JDK installation and add Maven to path.
# Use Java 8 for Assignment 2 of CS 245
# export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export PATH=/opt/apache-maven-3.6.3/bin:$PATH

# Set name of the theme to load
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
)

# Reload oh-my-zsh config
source $ZSH/oh-my-zsh.sh

# User configuration

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Settings
source ~/.zsh/settings.zsh

# Aliases
source ~/.shell/aliases.sh

# External plugins (initialized after)
source ~/.zsh/plugins_after.zsh

# Hide user@hostname
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/zhaozhang/Anaconda/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/zhaozhang/Anaconda/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/zhaozhang/Anaconda/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/zhaozhang/Anaconda/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
