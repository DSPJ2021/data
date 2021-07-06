#!/bin/bash


j=1
for i in *.csv; do
	sed -i 1i"sensor_id,location,lat,lon,timestamp,pressure,temperature,humidity" $i
	sed -i 's/\ /,/g' $i
	mv $i $j.csv
        j=$(($j+1))
done
