#!/usr/bin/bash

INPUT="data.csv"
OUTPUT="capitalize.csv"

while IFS=, read -r col1 col2 col3 col4; do
	col2=$(echo "$col2" | awk '{for(i=1;i<=NF;i++) sub(/./,toupper(substr($i,1,1)),$i)}1')
	echo "$col1, $col2, $col3, $col4"
done < "$INPUT" > "$OUTPUT"
