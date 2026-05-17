#!/bin/bash
john --format=NT --wordlist=rockyou.txt "$1"  2>/dev/tty | grep -v "Loaded" > 5-password.txt
