#!/bin/bash
find "$1" -type f -mtime 0 \( -perm -2000 -o -perm -4000 \) -exec ls -ldb {} \; 2>/dev/null 
