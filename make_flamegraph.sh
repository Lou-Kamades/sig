#!/bin/bash

# Check if input file name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <input>"
    exit 1
fi

# Assign the input file name to a variable
input="$1"

# Ensure the input file is readable
sudo chmod +r "${input}.data"

# Run the flamegraph command
flamegraph --perfdata "./${input}.data" -o "${input}.svg"

