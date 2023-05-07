#!/bin/bash
# Check if a URL is provided as an argument

if [ -z "$1" ]; then
	  echo "Error: Please provide a URL as an argument."
	    exit 1
fi

# Send a request to the URL and save the response body to a temporary file
response=$(mktemp)
curl -s -o "$response" "$1"

# Check if the request was successful
if [ $? -ne 0 ]; then
	  echo "Error: Failed to send the request to the URL."
	    exit 1
fi

# Get the size of the response body in bytes
size=$(wc -c < "$response")

# Display the size of the response body
echo "Size of the response body: $size bytes"

# Clean up the temporary file
rm "$response"

