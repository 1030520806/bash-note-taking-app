#!/bin/bash

echo "Enter the keyword to search:"
read keyword

matched_notes=$(grep -i "$keyword" ../data/notes.txt)

if [[ -z "$matched_notes" ]]; then
  echo "No notes found matching the keyword '$keyword'."
else
  echo "$matched_notes"
fi
