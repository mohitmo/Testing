#!/bin/bash
var="TESTP"
port=8000
count=$1
for i in 0 $(seq $count)
do
	tempn=$var$i
	temppo=$(($port + $i))
	ippeveprinter -c /usr/bin/file  -D ~/test -f application/pdf -p $temppo \"$tempn\" & 
done

echo "FINISH"
