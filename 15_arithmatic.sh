#!/bin/bash

# ===== CHECK INPUT =====
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 number1 operator number2"
  echo "Operators: +  -  *  /"
  echo "Example: $0 10 + 5"
  exit 1
fi

NUM1="$1"
OP="$2"
NUM2="$3"

# ===== VALIDATE NUMBERS =====
if ! [[ "$NUM1" =~ ^-?[0-9]+$ && "$NUM2" =~ ^-?[0-9]+$ ]]; then
  echo "Error: Please enter valid integers."
  exit 1
fi

# ===== ARITHMETIC =====
case "$OP" in
  +)
    RESULT=$((NUM1 + NUM2))
    ;;
  -)
    RESULT=$((NUM1 - NUM2))
    ;;
  \*)
    RESULT=$((NUM1 * NUM2))
    ;;
  /)
    if [ "$NUM2" -eq 0 ]; then
      echo "Error: Division by zero is not allowed."
      exit 1
    fi
    RESULT=$((NUM1 / NUM2))
    ;;
  *)
    echo "Error: Invalid operator. Use + - * /"
    exit 1
    ;;
esac

echo "Result: $NUM1 $OP $NUM2 = $RESULT"
