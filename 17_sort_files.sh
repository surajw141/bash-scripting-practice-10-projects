#!/bin/bash

# ===== USAGE CHECK =====
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <directory> [sort_by]"
  echo "sort_by options: name (default), type, size"
  exit 1
fi

DIR="$1"
SORT_BY="${2:-name}"

# ===== VALIDATE DIRECTORY =====
if [ ! -d "$DIR" ]; then
  echo "Error: '$DIR' is not a valid directory."
  exit 1
fi

cd "$DIR" || exit

echo "Sorting files in '$DIR' by '$SORT_BY'..."
echo

case "$SORT_BY" in
  name)
    ls -1 | sort
    ;;
  type)
    # Sort by file extension
    for ext in $(ls -1 | awk -F. 'NF>1 {print $NF}' | sort -u); do
      echo "Files with extension .$ext:"
      ls -1 *."$ext" 2>/dev/null
      echo
    done
    ;;
  size)
    # Sort by file size (smallest to largest)
    ls -lhS
    ;;
  *)
    echo "Invalid sort option. Use: name, type, size"
    exit 1
    ;;
esac

echo "Sorting complete."
