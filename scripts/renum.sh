#!/usr/bin/env bash

# Usage: ./renum.sh fichier.md

input="$1"
tmp="$(mktemp)"
tmp_with_toc="$(mktemp)"

h3_count=0
declare -A h4_count
toc_entries=()
first_h3_title=""
in_front_matter=false
front_matter_done=false

while IFS= read -r line; do
    line_without_cr="${line%$'\r'}"

    if [[ "$line_without_cr" == "---" && "$front_matter_done" == false ]]; then
        echo "$line" >> "$tmp"
        if [[ "$in_front_matter" == true ]]; then
            in_front_matter=false
            front_matter_done=true
        else
            in_front_matter=true
        fi
        continue
    fi

    if [[ "$in_front_matter" == true ]]; then
        echo "$line" >> "$tmp"
        continue
    fi

    # H3 : ### Titre
    if [[ "$line" =~ ^###\  ]]; then
        clean_title=$(echo "$line" | sed -E 's/^###[ ]*[0-9]*\.?[ ]*//')
        if [[ "$clean_title" == "Notes" ]]; then
            echo "### Notes" >> "$tmp"
            continue
        fi
        if [[ "$clean_title" == "Sommaire" ]]; then
            first_h3_title="$clean_title"
            echo "### Sommaire" >> "$tmp"
            continue
        fi

        ((h3_count++))
        h4_count[$h3_count]=0

        # Supprimer ancienne numérotation éventuelle
        if [[ -z "$first_h3_title" ]]; then
            first_h3_title="$clean_title"
        fi

        echo "### ${h3_count}. ${clean_title}" >> "$tmp"
        toc_entry="${h3_count}. ${clean_title}"
        toc_entries+=("$toc_entry")
        echo "$toc_entry"
        continue
    fi

    # H4 : #### Titre
    if [[ "$line" =~ ^####\  ]]; then
        ((h4_count[$h3_count]++))
        letter=$(printf "%b" "$(printf '\\%03o' $((96 + h4_count[$h3_count])) )")

        # Supprimer ancienne numérotation éventuelle
        clean_title=$(echo "$line" | sed -E 's/^####[ ]*[0-9]*[a-z]?\.?[ ]*//')

        echo "#### ${h3_count}${letter}. ${clean_title}" >> "$tmp"
        toc_entry="  ${h3_count}${letter}. ${clean_title}"
        toc_entries+=("$toc_entry")
        echo "$toc_entry"
        continue
    fi

    # Sinon : recopier la ligne telle quelle
    echo "$line" >> "$tmp"

done < "$input"

if [[ "$first_h3_title" == "Sommaire" ]]; then
    skip_existing_toc=true
    while IFS= read -r line; do
        line_without_cr="${line%$'\r'}"

        if [[ "$line_without_cr" == "### Sommaire" ]]; then
            echo "$line" >> "$tmp_with_toc"
            echo "" >> "$tmp_with_toc"
            for toc_entry in "${toc_entries[@]}"; do
                echo "$toc_entry" >> "$tmp_with_toc"
            done
            echo "" >> "$tmp_with_toc"
            skip_existing_toc=true
            continue
        fi

        if [[ "$skip_existing_toc" == true ]]; then
            if [[ "$line_without_cr" =~ ^###\  ]]; then
                skip_existing_toc=false
            else
                continue
            fi
        fi

        echo "$line" >> "$tmp_with_toc"
    done < "$tmp"
    mv "$tmp_with_toc" "$input"
    rm -f "$tmp"
else
    mv "$tmp" "$input"
    rm -f "$tmp_with_toc"
fi