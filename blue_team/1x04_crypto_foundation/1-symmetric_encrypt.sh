#!/bin/bash
# Encrypts a file with AES-256 in CBC or GCM mode using a random key.
# The generated key is saved to <output_file>.key .

usage() {
    echo "Usage: $0 <input_file> <output_file> <cbc|gcm>" >&2
    exit 1
}

generate_key() {
    (umask 077; openssl rand -hex 32 > "$2.key")
}

[ "$#" -eq 3 ] || usage

case "$3" in
    cbc)
        generate_key "$1" "$2"
        openssl enc -aes-256-cbc -pbkdf2 -iter 100000 -salt \
            -in "$1" -out "$2" -pass file:"$2.key"
        ;;
    gcm)
        generate_key "$1" "$2"
        openssl cms -encrypt -aes-256-gcm -secretkey "$(cat "$2.key")" -secretkeyid 30 \
            -binary -in "$1" -outform DER -out "$2"
        ;;
    *)
        usage
        ;;
esac
