#!/bin/bash
# files to copy
vim=~/.vimrc
bash_aliases=~/.bash_aliases
fstab=/etc/fstab
loop_timer=~/timer.sh

# destination
path=/home/potato/Desktop/config


cp $vim $path
cp $bash_aliases $path
cp $fstab $path
cp $loop_timer $path
