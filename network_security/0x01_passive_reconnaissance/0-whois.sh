#!/bin/bash
whois "$1" | awk '/Registrant/ || /Admin/ || /Tech/ {gsub(/[ \t]+:[ \t]+/, ","); print}' > "$1.csv"
