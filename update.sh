#!/bin/bash
# files to copy
vim=~/.vimrc
bash_aliases=~/.bash_aliases
fstab=/etc/fstab
loop_timer=~/timer.sh
init_vim=~/.config/nvim/init.vim
i3config=~/.config/i3/config
i3status=~/.config/i3status/config
compton=~/.config/compton.conf
polybar=~/.config/polybar/

# destination
dest=$(dirname "$0")

# copying all
cp $vim $dest
cp $bash_aliases $dest
cp $fstab $dest
cp $loop_timer $dest
cp $init_vim $dest
cp $i3config "$dest/i3/"
cp $i3status "$dest/i3status/"
cp $compton $dest
cp -r $polybar $dest
