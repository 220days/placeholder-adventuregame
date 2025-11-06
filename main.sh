#######################
### ERROR HANDELING ###
#######################

inputcheck() {
  option="$1"
  validity=1 # Initialize validity variable

  while [[ $validity -eq 1 ]]; do
    if [[ "$option" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
      validity=0 # Valid number
    else
      validity=1 # Invalid number
      echo -e "\e[1;37;41mERROR: Invalid input. Provide a number in the correct range.\e[0m"
      read -p "> " option # Prompt user for input again
    fi
  done
}

############
### TEST ###
############

read -p "> " option
inputcheck "$option" # Pass option as a quoted argument

echo "Validity: $validity"
echo "Option: $option"
