#!/bin/bash
source ./color.sh
source ./splashtxt.sh
source ./errors.sh
source ./menu.sh

numvalidity=1
###############
### SENARIO ###
###############

################
### WELCOME ###
################

echo "NAME THE VESSAL."
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
Backtothebegnings() {
  clear
  mainmenu
}
Backtothebegnings
echo ""
if [[ $debug -eq 0 ]]; then
  echored " DEBUG MODE ENABLED"
elif [[ $nameegg -eq 0 ]]; then
  echoyellow "  Welcome your highness."
elif [[ $nameegg -eq 1 ]]; then
  echoblue "  macOS is the worst OS, after windows. =]"
elif [[ $nameegg -eq 2 ]]; then
  echocyan "  Pycharm is the worst programing app ever. =]"
else
  splashtext
fi
echo ""
while [[ $numvalidity = 1 ]]; do
  read -p "> " start
  numinputcheck "$start"
done
numvalidity=1
if [[ $start -eq 0 ]]; then
  echocrimson "Farewell =]"
  exit
elif [[ $start -eq 1 ]]; then
  echogreen "Let's begine..."
  sleep 2
else
  clear
  echoyellow "Whar are you donig here ?"
  sleep 1
  echoyellow "You're not supposed to be here."
  sleep 2
  echoyellow "Are you lost ?"
  echo "  [0]yes [0]no"
  while [[ $numvalidity = 1 ]]; do
    read -p "> " choice
    numinputcheck "$choice"
  done
  echoyellow "Oh, Is that so ?"
  sleep 1
  echoyellow "Let me put you back"
  sleep 1
  Backtothebegnings
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
  echo "EGG STATUS: " $nameegg
  echo "NAME: " $name
fi
