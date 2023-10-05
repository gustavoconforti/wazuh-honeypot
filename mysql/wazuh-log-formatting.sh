#!/bin/bash

# Path to the file
file_path="/usr/local/mysql/error.log"

# Flag to determine whether to process a line
process_line=true

# Continuously process new lines in the file
tail -n 0 -f "$file_path" | while IFS= read -r line; do
    if [ "$process_line" = true ]; then
        if [[ "$line" == "MySQL log:"* ]]; then
            echo "$line" >> "$file_path"
        else
            echo "MySQL log: $line" >> "$file_path"
        fi
        process_line=false
    else
        process_line=true
    fi
done
