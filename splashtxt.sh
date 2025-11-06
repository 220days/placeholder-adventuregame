#!/bin/bash

splashtext=(
  "first"
  "seccond"
  "third"

)

Rindex=$((RANDOM % ${#splashtext[@]}))
Rtext=${splashtext[$Rindex]}

splashtext() {
  echo $Rtext
}
