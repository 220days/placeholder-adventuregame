#!/bin/bash
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
