#!/bin/bash
vim=~/.vimrc
bash_aliases=~/.bash_aliases
fstab=/etc/fstab
path=/home/potato/Desktop/config


echo $vim
cp $vim $path
cp $bash_aliases $path
cp $fstab $path
