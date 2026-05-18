#!/bin/bash
hashcat -a 1 -m 0 "$1" wordlist1.txt wordlist2.txt 2>&1 |tee /dev/tty | grep -E '[a-f0-9]{32}:' | cut -d: -f2 > 9-password.txt
