#!/bin/bash

echo "Enter the note title:"
read title

echo "Enter the note content (Press Ctrl+D when finished):"
content=$(cat)

timestamp=$(date +"%Y-%m-%d %H:%M:%S")
note_id=$(uuidgen)

echo "$note_id|$title|$content|$timestamp" >> ../data/notes.txt

echo "Note added successfully!"
