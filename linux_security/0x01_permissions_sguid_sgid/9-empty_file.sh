#!/bin/bash
find "$1" -type f -size 0 -empty -exec chmod 777 {} \; 2>/dev/null
