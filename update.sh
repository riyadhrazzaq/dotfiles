#!/bin/bash
# files to copy

# not in use anymore, using nvim now
vim=~/.vimrc
bash_aliases=~/.bash_aliases
fstab=/etc/fstab
init_vim=~/.config/nvim/init.vim

# not in use anymore, using herbstluftwm now
i3config=~/.config/i3/config
i3status=~/.config/i3status/config

# not in use anymore, using picom now
compton=~/.config/compton.conf
picom=~/.config/picom/
polybar=~/.config/polybar/
herbstluftwm=~/.config/herbstluftwm
rofi=~/.config/rofi

# destination
dest=$(dirname "$0")

# copying all
cp $bash_aliases $dest
cp $fstab $dest
cp $init_vim $dest
cp -r $polybar $dest
cp -r $herbstluftwm $dest
cp -r $rofi $dest
cp -r $picom $dest
