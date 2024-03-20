#!/bin/bash

# Function to encrypt a file
encrypt_file() {
    local input_file=$1
    local output_file=$2
    local passphrase=$3

    openssl enc -aes-256-cbc -salt -in "$input_file" -out "$output_file" -pbkdf2 -pass "pass:$passphrase"
}

# Function to decrypt a file
decrypt_file() {
    local input_file=$1
    local output_file=$2
    local passphrase=$3

    openssl enc -d -aes-256-cbc -in "$input_file" -out "$output_file" -pbkdf2 -pass "pass:$passphrase"
}

# Main function
main() {
    local mode=$1
    local input_file=$2
    local output_file=$3
    local passphrase=""

    # Check if mode, input file, and output file are provided
    if [ -z "$mode" ] || [ -z "$input_file" ] || [ -z "$output_file" ]; then
        echo "Usage: $0 <encrypt/decrypt> <input_file> <output_file>"
        exit 1
    fi

    # Prompt for passphrase
    cat banner.txt
    echo
    read -p "Enter passphrase: " passphrase
    echo

    # Perform encryption or decryption based on the mode
    case $mode in
        encrypt)
            encrypt_file "$input_file" "$output_file" "$passphrase"
            echo "File encrypted successfully."
            ;;
        decrypt)
            decrypt_file "$input_file" "$output_file" "$passphrase"
            echo "File decrypted successfully."
            ;;
        *)
            echo "Invalid mode. Use 'encrypt' or 'decrypt'."
            exit 1
            ;;
    esac
}

# Entry point
main "$@"
