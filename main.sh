#!/bin/bash

# Source the colors file
source utils/colors.sh

while true; do
  echo -e "${GREEN}==== Note Taking App ====${NC}"
  echo "1. Add Note"
  echo "2. View Notes"
  echo "3. Edit Note"
  echo "4. Delete Note"
  echo "5. Search Notes"
  echo "0. Exit"
  echo -e "========================\n"

  echo -n "Enter your choice: "
  read choice

  case $choice in
    1)
      source src/add_note.sh
      ;;
    2)
      source src/view_notes.sh
      ;;
    3)
      source src/edit_note.sh
      ;;
    4)
      source src/delete_note.sh
      ;;
    5)
      source src/search_notes.sh
      ;;
    0)
      echo "Exiting the Note Taking App..."
      exit 0
      ;;
    *)
      echo -e "${RED}Invalid choice. Please try again.${NC}"
      ;;
  esac

  echo -e "\n"
done
