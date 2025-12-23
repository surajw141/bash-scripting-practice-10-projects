#!/bin/bash

# ===== CHECK ARGUMENTS =====
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 file1 file2"
  exit 1
fi

FILE1="$1"
FILE2="$2"

# ===== CHECK FILE EXISTENCE =====
if [ ! -f "$FILE1" ]; then
  echo "Error: '$FILE1' does not exist."
  exit 1
fi

if [ ! -f "$FILE2" ]; then
  echo "Error: '$FILE2' does not exist."
  exit 1
fi

# ===== COMPARE FILES =====
if cmp -s "$FILE1" "$FILE2"; then
  echo "✅ Files are identical."
else
  echo "❌ Files are different."
  echo
  echo "Differences:"
  diff "$FILE1" "$FILE2"
fi
