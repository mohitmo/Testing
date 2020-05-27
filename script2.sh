#!/bin/bash

if [ $# -lt 1 ]
then
	echo "Usage: "
	echo $0 "num_of_printers_to_emulate"
	exit
fi

name="MYTESTP"
port=8400
count=$1
for i in 0 $(seq $count)
do
	temp_name=$name$i
	temp_port=$(($port + $i))
	ippeveprinter -c /usr/bin/file  -D ~/test -f application/pdf -p $temp_port \"$temp_name\" & 
done

echo "FINISH"
