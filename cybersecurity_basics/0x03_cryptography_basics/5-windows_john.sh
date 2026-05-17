#!/bin/bash
john --format=NT --wordlist=rockyou.txt "$1" 1> 5-password.txt
