#!/bin/bash
echo -n '$1' | openssl dgst -sha1 -binary | xxd -p > 0_hash.txt
