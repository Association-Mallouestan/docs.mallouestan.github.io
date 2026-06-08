#!/usr/bin/env bash

# Usage: ./renum.sh fichier.md

input="$1"
tmp="$(mktemp)"

h3_count=0
declare -A h4_count

while IFS= read -r line; do
    # H3 : ### Titre
    if [[ "$line" =~ ^###\  ]]; then
        ((h3_count++))
        h4_count[$h3_count]=0

        # Supprimer ancienne numérotation éventuelle
        clean_title=$(echo "$line" | sed -E 's/^###[ ]*[0-9]+[.]?[ ]*//')

        echo "### ${h3_count}. ${clean_title#### }" >> "$tmp"
        continue
    fi

    # H4 : #### Titre
    if [[ "$line" =~ ^####\  ]]; then
        ((h4_count[$h3_count]++))
        letter=$(printf "%b" "$(printf '\\%03o' $((96 + h4_count[$h3_count])) )")

        # Supprimer ancienne numérotation éventuelle
        clean_title=$(echo "$line" | sed -E 's/^####[ ]*[0-9]+[a-z]?[.]?[ ]*//')

        echo "#### ${h3_count}${letter}. ${clean_title##### }" >> "$tmp"
        continue
    fi

    # Sinon : recopier la ligne telle quelle
    echo "$line" >> "$tmp"

done < "$input"

mv "$tmp" "$input"