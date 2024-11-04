#!/bin/bash

wallpapersDir="$HOME/Pictures/wallpapers"

wallpapers=("$wallpapersDir"/*)

if [[ ${#wallpapers[@]} -eq 0 ]]; then
    wallpapers=("$wallpapersDir"/*)
fi

wallpaperIndex=$(( RANDOM % ${#wallpapers[@]} ))
selectedWallpaper="${wallpapers[$wallpaperIndex]}"

export SWWW_TRANSITION_FPS=60

swww img "$selectedWallpaper" --transition-type grow --transition-pos top-right --transition-duration 2 --transition-bezier 0,1,1,1

unset "wallpapers[$wallpaperIndex]"
