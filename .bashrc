# load aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# customize the prompt color
# Color codes
RESET="\[\033[0m\]"
BLACK="\[\033[0;30m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
WHITE="\[\033[0;37m\]"

# Bold colors
BOLD_BLACK="\[\033[1;30m\]"
BOLD_RED="\[\033[1;31m\]"
BOLD_GREEN="\[\033[1;32m\]"
BOLD_YELLOW="\[\033[1;33m\]"
BOLD_BLUE="\[\033[1;34m\]"
BOLD_PURPLE="\[\033[1;35m\]"
BOLD_CYAN="\[\033[1;36m\]"
BOLD_WHITE="\[\033[1;37m\]"


# Example 2: Prompt with git branch (if you use git)
parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
    }   
PS1="[${BOLD_GREEN}\u${RESET}@${BOLD_BLUE}\h${RESET}][${YELLOW}\w${RESET}]${PURPLE}\$(parse_git_branch)${RESET}\$ "

CACHE=/scratch/mriyadh/.cache
export HF_DATASETS_CACHE=$CACHE
export MODELSCOPE_CACHE=$CACHE

slog() {
  tail -f .slurm/$1-*.out
}

export PATH=$PATH:$HOME/.local/bin:$HOME/ripgrep-14.1.1-x86_64-unknown-linux-musl
export PATH="$PATH:$HOME/nvim-linux-x86_64/bin"

eval "$(fzf --bash)"
