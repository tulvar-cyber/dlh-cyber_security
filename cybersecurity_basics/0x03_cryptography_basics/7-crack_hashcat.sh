#!/bin/bash
hashcat -a 0 -m 0 "$1" rockyou.txt 2>&1 | tee /dev/tty | grep -E '[a-f0-9]{32}:' | cut -d: -f2 > 7-password.txt
