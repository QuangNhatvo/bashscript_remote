#!/usr/bin/bash

input_data="data.csv"
OUTPUT="filtered.csv"

echo "STT, HoTen, Ngay Sinh, Que Quan" > $OUTPUT
while IFS=, read -r col1 col2 col3 col4; do
	if test $(expr length "$col3") -eq 11; then
		echo "$col1, $col2, $col3, $col4" >> $OUTPUT
	fi
done <"$input_data"

