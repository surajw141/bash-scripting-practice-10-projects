#!/bin/bash

rows=7   # height of the top half (change to scale)

# Upper half (including middle)
for ((i=1; i<=rows; i++)); do
    # leading spaces
    for ((s=rows-i; s>0; s--)); do
        printf "  "
    done

    # dots
    for ((d=1; d<=2*i-1; d++)); do
        printf ". "
    done

    echo
done

# Lower half
for ((i=rows-1; i>=1; i--)); do
    for ((s=rows-i; s>0; s--)); do
        printf "  "
    done

    for ((d=1; d<=2*i-1; d++)); do
        printf ". "
    done

    echo
done
