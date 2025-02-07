#!/bin/bash

# Ensure a URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <file_url>"
    exit 1
fi

FILE_URL="$1"

# Fetch filename and size using curl headers
FILENAME=$(curl -sI "$FILE_URL" | grep -i "content-disposition" | sed -E 's/.*filename="([^"]+)".*/\1/')
FILESIZE=$(curl -sI "$FILE_URL" | grep -i "content-length" | awk '{print $2}' | tr -d '\r')

# If filename is missing, generate one from the URL
if [[ -z "$FILENAME" ]]; then
    FILENAME=$(basename "$FILE_URL")
fi

# Validate file size
if [[ -z "$FILESIZE" ]]; then
    echo "Error: Could not determine file size."
    exit 1
fi

echo "Sending file: $FILENAME ($FILESIZE bytes)"

# Download and send via lsz (streaming mode)
curl -s "$FILE_URL" | ../src/lsz -F "$FILENAME" -I "$FILESIZE" -

