#!/bin/bash
find "$1" -type f -exec chmod o-x {} \; 2>/dev/null
