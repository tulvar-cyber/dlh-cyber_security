#!/bin/bash
whois "$1" | awk '{gsub(/[ \t]+:[ \t]+/, ","); print}' > "$1.csv"
