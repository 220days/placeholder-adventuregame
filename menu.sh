#!/bin/bash
mainmenu() {
  menu_art="
  
  
  
     ▌ ▐·      ▪  ·▄▄▄▄   
    ▪█·█▌ ▄█▀▄ ██ ██· ██ 
    ▐█▐█•▐█▌.▐▌▐█·▐█▪ ▐█▌
     ███ ▐█▌.▐▌▐█▌██. ██ 
    . ▀   ▀█▄▀▪▀▀▀▀▀▀▀▀• 
  
  
  
  [1]START  [2]----- [0]EXIT
  "

  # Get the length of the longest line in the ASCII art
  art_length=$(echo "$menu_art" | wc -L)
  #  Get the current width of the terminal
  terminal_width=$(tput cols)
  # Calculate padding for centering the ASCII art
  padding=$(((terminal_width - art_length) / 2))
  # Loop through each line of the ASCII art
  while IFS= read -r line; do
    printf "%${padding}s%s\n" "" "$line"
  done <<<"$menu_art"
}
