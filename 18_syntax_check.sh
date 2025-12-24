#!/bin/bash

# ===== CHECK ARGUMENT =====
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <script_file>"
  exit 1
fi

SCRIPT="$1"

# ===== CHECK FILE EXISTS =====
if [ ! -f "$SCRIPT" ]; then
  echo "Error: File '$SCRIPT' not found."
  exit 1
fi

# ===== DETECT SHELL TYPE =====
SHEBANG=$(head -n 1 "$SCRIPT")

echo "Checking syntax for: $SCRIPT"
echo

if [[ "$SHEBANG" == *"bash"* ]]; then
  echo "Detected Bash script"
  bash -n "$SCRIPT"
elif [[ "$SHEBANG" == *"sh"* ]]; then
  echo "Detected Shell script"
  sh -n "$SCRIPT"
else
  echo "Unknown shell type. Trying Bash by default."
  bash -n "$SCRIPT"
fi

# ===== RESULT =====
if [ $? -eq 0 ]; then
  echo
  echo "✅ Syntax check passed. No errors found."
else
  echo
  echo "❌ Syntax errors detected."
fi
