# navigation shortcuts
alias ..='cd ..'
alias 2..='cd ../..'
alias 3..='cd ../../../'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lh='ls -lh'
alias dir='dir --color=auto'

# System shortcuts
alias du='du -h'
alias free='free -m'
alias update='sudo apt update && sudo apt upgrade'
alias ports='netstat -tulanp'
alias myip='curl http://ipecho.net/plain; echo'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gf='git fetch'

# Directory shortcuts
alias home='cd ~'
alias root='cd /'

# Utility shortcuts
alias mkdir='mkdir -pv'
alias ping='ping -c 5'
alias wget='wget -c'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

alias bashrc='nano ~/.bashrc'
alias aliases='nano ~/.bash_aliases'

# Process management
alias psa='ps aux'
alias psg='ps aux | grep'
alias kill9='kill -9'

# Network
alias listen='netstat -antp | grep LISTEN'
alias ips='ip -br -c a'
alias dns='cat /etc/resolv.conf'

# System cleanup
alias cleanup='sudo apt autoremove && sudo apt clean'
alias cache='sync && echo 3 | sudo tee /proc/sys/vm/drop_caches'

# Docker shortcuts (if you use Docker)
alias d='docker'
alias dc='docker-compose'
alias dps='docker ps'
alias di='docker images'

# Safety nets
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'

# History shortcuts
alias h='history'
alias hg='history | grep'

# Make output human-readable
alias df='df -h'
alias du='du -h'
alias free='free -h'

# slurm
alias sq='squeue -u mriyadh'
alias sq_hist='sacct -u mriyadh --starttime=2025-01-01 --format=JobID,JobName,Start,End,Elapsed,State,ExitCode | grep -v "\." | tail -n 50'
alias sq_mem='sacct -u mriyadh --starttime=2025-01-01 --format=JobID,JobName,MaxRSS,AllocTRES | tail -n 50'
alias activate='source venv/bin/activate'
alias hitzbash='srun --account=hitz-exclusive --partition=hitz-exclusive --cpus-per-task=1 --mem=64GB --gres=gpu:1 --constraint=a100-sxm4 --pty bash'
alias regbash='srun --qos=regular --cpus-per-task=1 --mem=64GB --gres=gpu:1 --constraint=a100-pcie --pty bash'
alias hitz='squeue -p hitz-exclusive'
alias jupyterserver='jupyter notebook --no-browser --ip 0.0.0.0 --port 8888'
alias cpubash='srun --qos=serial --cpus-per-task=1 --mem=32GB --pty bash'
alias hitzinfo='sinfo -p "hitz-exclusive" -N -O "NodeList","GresUsed","Gres","FreeMem","CPUs","CPUsState"'

jobinfo() {
      scontrol show jobid -d $1
}

