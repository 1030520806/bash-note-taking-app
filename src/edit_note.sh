#!/bin/bash

echo "Enter the note ID to edit:"
read edit_id

# Check if the note exists
if grep -q "^$edit_id|" ../data/notes.txt; then
  echo "Enter the new title (press Enter to keep the current title):"
  read new_title

  echo "Enter the new content (press Ctrl+D when finished, press Enter to keep the current content):"
  new_content=$(cat)

  # Read the file line by line and edit the note if found
  while IFS='|' read -r note_id title content timestamp; do
    if [ "$note_id" = "$edit_id" ]; then
      title=${new_title:-$title}
      content=${new_content:-$content}
    fi
    echo "$note_id|$title|$content|$timestamp" >> ../data/temp_notes.txt
  done < ../data/notes.txt

  # Overwrite the original file with the updated content
  mv ../data/temp_notes.txt ../data/notes.txt

  echo "Note with ID $edit_id has been updated successfully!"
else
  echo "Note with ID $edit_id not found."
fi
