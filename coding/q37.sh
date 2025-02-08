#!/bin/bahs

# -> How do you create a temporary file in bash? Demonstrate with an example.

# Create a temporary file
temp_file=$(mktemp)

# Check if the file was created
if [[ ! -f "$temp_file" ]]; then
    echo "Failed to create a temporary file."
    exit 1
fi

echo "Temporary file created: $temp_file"

# Write some content to the temporary file
echo "This is a temporary file created at $(date)" > "$temp_file"

# Display the contents of the temp file
cat "$temp_file"

# Cleanup (optional: remove the temp file when done)
rm -f "$temp_file"
echo "Temporary file deleted."
