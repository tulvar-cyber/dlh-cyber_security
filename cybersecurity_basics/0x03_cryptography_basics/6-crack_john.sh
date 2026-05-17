#!/bin/bash
john --format=Raw-SHA256 --wordlist=rockyou.txt "$1"  2>/dev/tty | grep -v "Loaded" > 6-password.txt
