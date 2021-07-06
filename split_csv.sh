#!/bin/bash

# $1 -> .csv
#splits csv by seconds column into multiple files $1.csv

CSV=$1

# delete first column (id), sort by 2nd
awk -F',' '{print $2,$3,$4,$5,$6,$7,$8}' $1 | sort -u > data.csv #to import more dates: > -> >>

#
awk -F" " '{ print > $1 ".csv" }' data.csv

rm $1 #data_july.csv
mv sensor_id.csv legende.txt


#for i in "${!CSV_list[@]}"; do
#	sed -i 1i",sensor_id,location,lat,lon,timestamp,pressure,temperature,humidity" ${CSV_list[i]}
#done
