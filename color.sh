#!/bin/bash
#################
### FUNCTIONS ###
#################
echoERROR() {
  local message="$1"
  echo -e "\e[1;37;41mERROR: ${message}\e[0m"
}
echoSUCCE() {
  local message="$1"
  echo -e "\e[1;37;42mSUCCE: ${message}\e[0m"
}
echoWARNI() {
  local message="$1"
  echo -e "\e[1;37;43mWARNI: ${message}\e[0m"
}

echored() {
  local RED='\033[0;31m'
  local NC='\033[0m' # No color
  echo -e "${RED}$1${NC}"
}
echoblue() {
  local BLUE='\033[0;34m'
  local NC='\033[0m' # No color
  echo -e "${BLUE}$1${NC}"
}
echocyan() {
  local CYAN='\033[0;36m'
  local NC='\033[0m' # No color
  echo -e "${CYAN}$1${NC}"
}
echoblack() {
  local BLACK='\033[0;30m'
  local WHITE_BG='\033[47m'
  local NC='\033[0m' # No color
  echo -e "${BLACK}${WHITE_BG}$1${NC}"
}
echocrimson() {
  local CRIMSON='\033[38;5;196m' # Approximation of crimson
  local WHITE_BG='\033[47m'
  local NC='\033[0m' # No color
  echo -e "${CRIMSON}${WHITE_BG}$1${NC}"
}
echogreen() {
  local LIGHT_GREEN='\033[1;32m' # Bold light green
  local NC='\033[0m'             # No color
  echo -e "${LIGHT_GREEN}$1${NC}"
}
echoyellow() {
  local YELLOW='\033[1;33m' # Bold yellow
  local NC='\033[0m'        # No color
  echo -e "${YELLOW}$1${NC}"
}
