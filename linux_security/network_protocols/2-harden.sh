#!/bin/bash
find / -xdev -type d -perm -002 2>/dev/null | tee /dev/tty | xargs chmod o-w
