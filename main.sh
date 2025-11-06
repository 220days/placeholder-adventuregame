#!/bin/bash
source ./color.sh
#######################
### ERROR HANDELING ###
#######################

# Checks if the input is number
numinputcheck() {
  option="$1"
  numvalidity=1 # Initialize validity variable

  if [[ "$option" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
    numvalidity=0 # Valid number
  else
    numvalidity=1 # Invalid number
    echoERROR "Invalid input. Provide a numbre within the range."
  fi
}
# Checks if the input is word
wordinputcheck() {
  option="$1"
  wordvalidity=1 # Initialize validity variable
  if [[ "$option" =~ ^[a-zA-Z]+$ ]]; then
    wordvalidity=0 # Valid word
  else
    wordvalidity=1 # Invalid word
    echoERROR "Invalid input. Provide a combenetion of letters."
  fi
}
# Checks if the input is ascii
assciiinputcheck() {
  option="$1"
  asciivalidity=1
  if [[ "$option" =~ ^[a-zA-Z]+$ ]] || [[ "$option" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
    asciivalidity=0 # Valid ASCII
  else
    asciivalidity=1 # Invalid ASCII
    echoERROR "Invalid input. Provide a combenetion of ascii charachters."
  fi
}

###############
### SENARIO ###
###############

################
### WELCOME ###
################

echo "NAME THE VESSAL." # Gameplay part

# Checks if the name is asscii
asciivalidity=1
while [[ asciivalidity -eq 1 ]]; do
  read -p "~ " name
  assciiinputcheck "$name"
done

debug="220" # Enables debug
egg0="mh"
egg1="Erfan" #Checks if Erfan # lightblue
egg2="Nima"  #Checks if its nime # cyned

if [[ "$name" = $debug ]]; then
  debug=0
elif [[ "$name" = $egg0 ]]; then
  nameegg=0

elif [[ "$name" = $egg1 ]]; then
  nameegg=1

elif [[ "$name" = $egg2 ]]; then
  nameegg=2
else
  debug=99
  nameegg=99
fi

#################
### MAIN MENU ###
#################
clear
menu_art="



   ▌ ▐·      ▪  ·▄▄▄▄    
  ▪█·█▌ ▄█▀▄ ██ ██· ██   
  ▐█▐█•▐█▌.▐▌▐█·▐█▪ ▐█▌  
   ███ ▐█▌.▐▌▐█▌██. ██   
  . ▀   ▀█▄▀▪▀▀▀▀▀▀▀▀•  




"

# Get the length of the longest line in the ASCII art
art_length=$(echo "$menu_art" | wc -L)
# Get the current width of the terminal
terminal_width=$(tput cols)
# Calculate padding for centering the ASCII art
padding=$(((terminal_width - art_length) / 2))
# Loop through each line of the ASCII art
while IFS= read -r line; do
  printf "%${padding}s%s\n" "" "$line"
done <<<"$menu_art"

### splash text

if [[ $debug -eq 0 ]]; then
  echored " DEBUG MODE ENABLED"
elif [[ $nameegg -eq 0 ]]; then
  echoyellow "  Welcome your highness."
elif [[ $nameegg -eq 1 ]]; then
  echoblue "  macOS is the worst OS, after windows. =]"
elif [[ $nameegg -eq 2 ]]; then
  echocyan "  Pycharm is the worst programing app ever. =]"
else
  echo "  INPROGRASS"
fi

############
### TEST ###
############
if [[ $debug -eq 0 ]]; then
  echo "
     ___ __ _____ __
      | |_ (_  | (_ 
      | |____) | __)
 
      ______________

  "

  echo "DEBUG STATUS: " $debug
  echo "EGG STATUS: " "$nameegg"
  echo "NAME: " $name
fi
