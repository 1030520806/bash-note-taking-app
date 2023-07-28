#!/bin/bash

echo "Enter the note ID to delete:"
read delete_id

# Check if the note exists
if grep -q "^$delete_id|" ../data/notes.txt; then
  # Filter out the note with the specified ID
  grep -v "^$delete_id|" ../data/notes.txt > ../data/temp_notes.txt
  mv ../data/temp_notes.txt ../data/notes.txt

  echo "Note with ID $delete_id has been deleted successfully!"
else
  echo "Note with ID $delete_id not found."
fi
