#!/bin/bash

# check input
if [ -z "$1" ]; then
    echo "Usage: $0 <4-digit-integer>"
    exit 1
fi

# check an einai 4 digits
if ! [[ "$1" =~ ^[0-9]{4}$ ]]; then
    echo "Error: Input must be a 4-digit integer."
    exit 1
fi

# SHA-256
hash=$(echo -n "$1" | sha256sum | awk '{print $1}')

# output  hash_output.txt
echo "$hash" > hash_output.txt
