#!/bin/bash
mkfifo puerto
n=0
while [ $n -eq 0 ]
do
	#random=`echo $(($RANDOM%501))`
	nc -l 5000 < puerto | ./PuertoAleatorio.sh > puerto
	#puerto=`cat Numero.sh`		
	gnome-terminal -x sh -c "./Obertura.sh; bash"
done
rm puerto
