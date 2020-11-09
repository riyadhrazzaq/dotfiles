#!/bin/bash
# files to copy
vim=~/.vimrc
bash_aliases=~/.bash_aliases
fstab=/etc/fstab
loop_timer=~/timer.sh
init_vim=~/.config/nvim/init.vim

# destination
dest=/home/potato/Desktop/config


cp $vim $dest
cp $bash_aliases $dest
cp $fstab $dest
cp $loop_timer $dest
cp $init_vim $dest
