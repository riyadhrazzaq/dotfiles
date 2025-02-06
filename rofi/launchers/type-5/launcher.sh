#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-1     style-2     style-3     style-4     style-5

dir="$HOME/.config/rofi/launchers/type-5"
theme='style-2'

## Run
rofi \
    -show $1 \
    -theme ${dir}/${theme}.rasi \
    -modes run,window
    -combi run,drun
