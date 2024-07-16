#!/usr/bin/bash

NUM_=100

NAMES=("Nguyen Van Aaa" "Nguyen thi bbbb" "tran van Cccc" "hoang van ddddd" "Huynh thi Eeee" "truong van hhhh" "Luu van Gggg" "Le Thi Bbbb")

PLACES=("Ha Noi" "Sai Gon" "Hue" "Da Nang" "Hai Phong" "Nha Trang" "Dong Nai" "Vung Tau" "Quang Ninh")

OUTPUT="data.csv"
echo "STT, HoTen, Ngay sinh, Que Quan" > $OUTPUT

generate_random_date(){
	year=$((RANDOM%30 + 1970))
	month=$((RANDOM%12 + 1))
	day=$((RANDOM%28+1))
	printf "%d-%d-%d" $year $month $day
}

for ((i=1; i<=$NUM_; i++)); do
	name=${NAMES[$RANDOM % ${#NAMES[@]}]}
	date=$(generate_random_date)
	place=${PLACES[$RANDOM % ${#PLACES[@]}]}
	echo "$i, $name, $date, $place" >> $OUTPUT
done

