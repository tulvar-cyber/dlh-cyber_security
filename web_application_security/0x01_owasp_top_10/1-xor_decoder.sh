#!/bin/bash

##  Create a Bash script that decode XOR WebSphere

## Argument
HASH="$1"

## Delete the prefix {xor}
BASE64="${HASH#\{xor\}}"

echo "$BASE64" | base64 -d 2>/dev/null | while IFS= read -r -n1 char; do
    # Get ASCII 
    ascii=$(printf "%d" "'$char")
    # Apply XOR '_' 
    xor=$((ascii ^ 95))  
    # Convert result and print
    printf "\\$(printf '%03o' $xor)"
done

echo
