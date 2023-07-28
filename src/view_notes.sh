#!/bin/bash

if [[ ! -s ../data/notes.txt ]]; then
  echo "No notes found."
else
  while IFS='|' read -r note_id title content timestamp; do
    echo "Note ID: $note_id"
    echo "Title: $title"
    echo "Content: $content"
    echo "Timestamp: $timestamp"
    echo "-----------------------"
  done < ../data/notes.txt
fi
