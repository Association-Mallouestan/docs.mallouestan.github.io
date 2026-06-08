#!/usr/bin/env bash

# Usage: ./clean_notes.sh chemin/vers/fichier.md

INPUT="$1"

ssed -E 's/<note>[^<]*<\/note>//g' "$INPUT"